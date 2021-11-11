# Created by Carlos C Vera Recio
# last edited October 30, 2021
# a GUI to calculate internal medicine scores quickly
#--------------

# clean environment
rm(list=ls(all=TRUE))

# 1) Mean arterial pressure 
map.calc = function(
  sbp = 117,
  dbp = 76
)
{
  map=(sbp+(2*dbp))/3
  cat("map = ", map);cat('', sep='\n')
  return(map)
}
# map.calc() 

# 2) A-a gradient
Aa.gradient.cal = function(
  age=81,
  FiO2=0.4,
  PaO2=146.3,
  PaCO2=33.2,
  Patm=760,
  R=0.8,
  PH2O=47
)
{
  PAO2 = (FiO2 * (Patm - PH2O)) - (PaCO2 / R)
  Aa.gradient = PAO2 - PaO2
  expected = (age/4) + 4
  cat("A-a gradient = ", Aa.gradient);cat('', sep='\n')
  cat("Expected A-a gradient = ", expected);cat('', sep='\n')
  return(Aa.gradient)
}
# Aa.gradient.cal()

# 3) Calcium correction
corrected.calcium.calc = function(
  measured.calcium=8.0,
  albumin=2.4,
  unit="SI"
){
  if(unit == "SI")
  {
    corrected.calcium = measured.calcium + 0.02*(40 - albumin)
  } else if(unit == "Eng")
  {
    corrected.calcium = measured.calcium + 0.02*(40 - albumin)
  }
  
  cat("Corrected calcium= ", corrected.calcium, " in units ", unit);cat('', sep='\n')
  return(corrected.calcium)
}
# corrected.calcium.calc()

# 4) Creatinine Clearance
creatinine.clearance = function(
  sex="male",
  age=78,
  weight=100,
  s.cre=1.58
)
{
  # message
  cat(
    "Please input age in years, weight in pounds and serum creatinine in mg/dL"
  );cat('', sep='\n')
  
  # calc and return
  if(sex == "male")
  {
    CCr=(((140-age)*(weight/2.2))/(72*s.cre))
  } else if(sex=="female")
  {
    CCr=(((140-age)*(weight/2.2))/(72*s.cre))*0.85
  }
  cat("Creatinine clearance", CCr);cat('', sep='\n')
  return(CCr)
}
# creatinine.clearance()

# 5) FENA score
FENa = function(
  urine.sodium=1,
  plasma.sodium=1,
  urine.creatinine=1,
  plasma.creatinine=1
)
{
  FENa = 100*((urine.sodium*plasma.creatinine)/(plasma.sodium*urine.creatinine))
  cat("Fraction of excreted sodium = ", FENa);cat('', sep='\n')
  interpretation = if(FENa > 4)
  {
    'Post Renal'
  }else if(FENa >= 1 & FENa <=4)
  {
    'Intrinsic Renal'
  }else if(FENa < 1)
  {
    'Pre-Renal'
  }
  res = list(
    'fraction of excreted sodium' = FENa,
    'interpretation' = interpretation
  )
  return(res)
}
# FENa()

# # APACHE score
# APACHE.II = function(
#   
# )
# {
#   
# }
# APACHE.II()

# 6) CHADs-VASC
CHADSVASc = function(
  CHF='yes',
  HTN = 'yes',
  Age = 75,
  DM = 'yes',
  Stroke = 'yes',
  Vascular = 'yes',
  sex = 'female'
)
{
  score=0
  if(Age >= 75)
  {
    score = score + 2
  }else if(Age >=65 & Age <75)
  {
    score = score + 1
  }
  if(sex == 'female')
  {
    score = score + 1
  }
  if(Vascular == 'yes')
  {
    score = score + 1
  }
  if(Stroke == 'yes')
  {
    score = score + 2
  }
  if(DM == 'yes')
  {
    score = score + 1
  }
  if(HTN == 'yes')
  {
    score = score + 1
  }
  if(CHF == 'yes')
  {
    score = score + 1
  }
  cat('The CHAD-VASc score for this patient is: ', score);cat('', sep = '\n')
  cat('One recommendation suggests a 0 score is “low” risk and may not require anticoagulation;
      a 1 score is “low-moderate” risk and should consider antiplatelet or anticoagulation,
      and score 2 or greater is “moderate-high” risk and should otherwise be an anticoagulation
      candidate.', sep = '\n')
  
  return(score)
}
# CHADSVASc()

# 7) Glasgow Comma Scale
Glasgow = function(
  best.eye.response=4,
  best.verbal.response=5,
  best.motor.response=6,
  mechanical.ventilation=FALSE,
  ask.input = FALSE
)
{
  if(ask.input == 'TRUE')
  {
    # take user input to calculate glasgow comma scale
    best.eye.response = readline(
      prompt = 'Please input score for best eye response: 
      Spontaneous = 4, 
      to verbal command = 3,
      to pain = 2, 
      no eye opening = 1: 
      '
    )
    best.motor.response = readline(
      prompt = 'Please input score for best motor response: 
      Obeys commands = 6, 
      localizes pain = 5,
      withdrawal from pain = 4, 
      flexion to pain = 3, 
      extension to pain = 2, 
      no reponse = 1: 
      '
    )
    if(mechanical.ventilation == FALSE)
    {
      best.verbal.response = readline(
        prompt = 'Please input score for best verbal response: 
        Oriented = 5,
        Confused = 4, 
        Innapropriate words = 3, 
        Incomprehensible sounds = 2, 
        no reponse = 1: 
        '
      )
    }else
    {
        best.verbal.response=1
    }
  }
  if(mechanical.ventilation)
  {
    glasgow.score = 1+as.integer(best.eye.response)+as.integer(best.motor.response)
  }else if(!(mechanical.ventilation))
  {
    glasgow.score = as.integer(best.verbal.response)+as.integer(best.eye.response)+as.integer(best.motor.response)
  }
  cat('Glasgow comma scale for this patient is estimated to be :', glasgow.score)
  cat('', sep = '\n');cat('', sep = '\n')
  cat('The maximum score in the Glasgow comma scale is 15. The maximum score for patients in mechanical ventilation is 11.', sep = '\n')
  cat('', sep = '\n')
  return(glasgow.score)
}
# Glasgow()

# 8) ICH score
ich.score = function(
  glasgow.score = 15,
  age = 80,
  ich.volume = 30,
  intraventricular='no',
  infratentorial='no'
)
{
  score=0
  if(age > 79)
  {
    score = score + 1
  }
  if(ich.volume >= 30)
  {
    score = score + 1
  }
  if(glasgow.score > 11)
  {
    score = score + 0
  }else if(glasgow.score > 4 & glasgow.score < 12)
  {
    score = score + 1
  }else if(glasgow.score < 5)
  {
    score = score + 2
  }
  if(intraventricular == 'yes')
  {
    score = score+1
  }
  if(infratentorial == 'yes')
  {
    score = score + 1
  }
  cat('ich score is: ', score);cat('', sep = '\n')
  return(score)
}

# 9) 'Maintenance fluids' = Maintenance.Fluids,
Maintenance.Fluids = function(
  weight = 200, 
  units = 'pounds'
)
{
  if(units == 'pounds')
  {
    weight.kg = weight/2.2
  }else if(units == 'kg')
  {
    weight.kg=weight
  }else
  {
    warning('The input to units is a string, and only accepts the values kg or pounds')
  }
  
  if(weight.kg >= 20)
  {
    fluids.per.day = 1500+(weight.kg-20)*20
  } else if(weight.kg >= 10)
  {
    fluids.per.day = 1000+(weight.kg-10)*50
  } else if(weight.kg < 10)
  {
    fluids.per.day = weight.kg*100
  }
  hourly.rate = fluids.per.day/24
  bolus = weight.kg*20
  fluids=list(
    'mL per hour' = hourly.rate,
    'mL per day' = fluids.per.day,
    'mL for bolus' = bolus
  )
  return(fluids)
}

# 10) 'Sodium Correction for Hyperglycemia' = sodium.correct,
sodium.correct = function(
  measured.sodium=140,
  serum.glucose=100
)
{
  corrected.sodium = measured.sodium + 0.024*(serum.glucose - 100)
  cat('Sodium corrected for hyperglycemia is: ', corrected.sodium);cat('', sep = '\n')
  return(corrected.sodium)
}
# sodium.correct()

# 'Quick SOFA score for sepsis' = qSOFA,
qSOFA = function(
  altered.mental.status='no',
  respiratory.rate=16,
  systolic.blood.pressure=120
)
{
  sofa=0
  if(respiratory.rate > 21)
  {
    sofa = sofa + 1
  }
  if(systolic.blood.pressure < 100)
  {
    sofa = sofa + 1
  }
  if(altered.mental.status == 'yes')
  {
    sofa = sofa + 1
  }
  return(sofa)
}

# 'CURB-65 Score for Pneumonia' = CURB.65,
curb65 = function(
  confusion='no',
  BUN=17,
  systolic.blood.pressure=120,
  diastolic.blood.pressure=80,
  respiratory.rate = 16
  
)
{
  guide = list(
    'high risk, 27.8% 30-day mortality' = 4,
    'Severe risk group: 14.0% 30-day mortality.' = 3,
    'Moderate risk group: 6.8% 30-day mortality.' = 2,
    'Low risk group: 2.7% 30-day mortality.'=1,
    'Low risk group: 0.6% 30-day mortality.' = 0
  )
  curb.score=0
  if(confusion == 'yes')
  {
    curb.score = curb.score + 1
  }
  if(BUN > 17)
  {
    curb.score = curb.score + 1
  }
  if(respiratory.rate > 29)
  {
    curb.score = curb.score + 1
  }
  if(systolic.blood.pressure < 90 | diastolic.blood.pressure < 61)
  {
    curb.score = curb.score + 1
  }
  res = list(
    'curb score'=curb.score, 
    'interpretation' = names(guide[guide == curb.score])
  )
  return(res)
}

# 'TIMI Risk score fo UA/nSTEMI' = TIMI.risk,
TIMI = function(
  age=65,
  Number.of.CAD.risk.factors=4,
  known.CAD='yes',
  aspirin.in.last.7.days='yes',
  number.of.angina.episodes.in.24.hours=2,
  ekg.st.changes.over.0.5='yes',
  positive.cardiac.markers='yes',
  HR = 100,
  sbp = 120,
  which.timi = 'nSTEMI',
  DHA = TRUE,
  JVD = TRUE,
  Pulmonary.Edema = TRUE,
  weight.kg = 67,
  Anterior.STE = TRUE,
  LBBB = TRUE,
  time.to.treat = 4
)
{
  if(which.timi == 'nSTEMI')
  {
    guide = list(
      '5% mortality in 14 days' = 0,
      '5% mortality in 14 days' = 1,
      '8% mortality in 14 days' = 2,
      '13% mortality in 14 days' = 3,
      '20% mortality in 14 days' = 4,
      '26% mortality in 14 days' = 5,
      '41% mortality in 14 days' = 6,
      '41% mortality in 14 days' = 7
    )
    score=0
    if(age >= 65)
    {
      score = score + 1
    }
    if(Number.of.CAD.risk.factors >= 3)
    {
      score = score + 1
    }
    if(known.CAD == 'yes')
    {
      score = score + 1
    }
    if(aspirin.in.last.7.days == 'yes')
    {
      score = score + 1
    }
    if(ekg.st.changes.over.0.5 == 'yes')
    {
      score = score + 1
    }
    if(positive.cardiac.markers == 'yes')
    {
      score = score + 1
    }
    if(number.of.angina.episodes.in.24.hours >= 2)
    {
      score = score + 1
    }
    res = list(
      'TIMI score'=score, 
      'interpretation' = names(guide[guide == score])
    )
  }else if(which.timi == 'STEMI')
  {
    score=0
    if(age < 65)
    {
      score = score+0
    }else if(age >= 65 & age <=74)
    {
      score = score + 2
    } else if(age > 74)
    {
      score = score + 3
    }
    if(DHA)
    {
      score = score + 1
    }
    if(sbp < 100)
    {
      score = score + 3
    }
    if(HR > 100)
    {
      score = score + 2
    }
    if(JVD | Pulmonary.Edema)
    {
      score = score + 2
    }
    if(weight.kg < 67)
    {
      score = score + 1
    }
    if(Anterior.STE | LBBB)
    {
      score  = score + 1
    }
    if(time.to.treat > 4)
    {
      score = score + 1
    }
    guide = list(
      '0.8% risk of all-cause mortality at 30 days.' = 0,
      '1.6% risk of all-cause mortality at 30 days.' = 1,
      '2.2% risk of all-cause mortality at 30 days.' = 2,
      '4.4% risk of all-cause mortality at 30 days.' = 3,
      '7.3% risk of all-cause mortality at 30 days.' = 4,
      '12.4% risk of all-cause mortality at 30 days.' = 5,
      '16.1% risk of all-cause mortality at 30 days' = 6,
      '23.4% risk of all-cause mortality at 30 days.' = 7,
      '26.8% risk of all-cause mortality at 30 days.' = 8,
      '35.9% risk of all-cause mortality at 30 days.' = 9,
      '35.9% risk of all-cause mortality at 30 days.' = 10,
      '35.9% risk of all-cause mortality at 30 days.' = 11,
      '35.9% risk of all-cause mortality at 30 days.' = 12,
      '35.9% risk of all-cause mortality at 30 days.' = 13,
      '35.9% risk of all-cause mortality at 30 days.' = 14
    )
    res = list(
      'TIMI score'=score, 
      'interpretation' = names(guide[guide == score])
    )
  }else if(which.timi == 'ACS')
  {
    score = HR*((age/10)^2)/sbp
    res = list(
      'score' = score, 
      'interpretation' = 'please read the following article for interpretation of this score.',
      'article' = 'Wiviott, Stephen D et al. “Application of the Thrombolysis in Myocardial Infarction risk index in non-ST-segment elevation myocardial infarction: evaluation of patients in the National Registry of Myocardial Infarction.” Journal of the American College of Cardiology vol. 47,8 (2006): 1553-8. doi:10.1016/j.jacc.2005.11.075'
    )
  }else
  {
    warning('which.timi needs to be either STEMI, nSTEMI or ACS')
  }
  return(res)
}

# Fraction of excreted urea
FEurea = function(
  serum.creatinine=1,
  urine.urea=1,
  serum.urea=1,
  urine.creatine=1
)
{
  guide = list(
    'Pre-renal' = 35,
    'Intrinsic renal' = 50
  )
  feurea =  100*((serum.creatinine*urine.urea)/(serum.urea*urine.creatine))
  interpretation = if(feurea > 50)
  {
    'Intrinsic Renal'
  }else if(feurea <= 35)
  {
    'Prerenal'
  }else
  {
    'not conclusive'
  }
  res = list(
    'fraction of excreted urea' = feurea,
    'interpretation' = interpretation
  )
  return(res)
}

# Corrected QT interval
QTc = function(
  QT.length=10,
  HR=60,
  paper.speed = 25,
  units = 'small box'
)
{
  # get rr
  RR.interval = 60/HR
  
  # get QT
  if(units == 'small box' & paper.speed == 25)
  {
    QT.interval = 40*QT.length
  }else if(units == 'small box' & paper.speed == 50)
  {
    QT.interval = 20*QT.length
  }else if(units == 'msec')
  {
      QT.interval = QT.length
  }else
  {
    warning('Could not identify QT Interval length with the information provided.
            Please make sure you provided the correct values for the variable <units>.
            The accepted values for <units> are <small box> or <msec>.')
  }
  if(exists('QT.interval'))
  {
    # get QTc from different formulas
    Bazett.QTc = QT.interval / sqrt(RR.interval)
    Fridericia.QTc = QT.interval / ((RR.interval)^(1/3) )
    Framingham.QTc = QT.interval + 154 * (1 - RR.interval)
    Hodges.QTc = QT.interval + 1.75 * ((60 / RR.interval) - 60)
    
    # return a list of QTc
    res=list(
      'Bazett' = Bazett.QTc,
      'Fridericia' = Fridericia.QTc,
      'Framingham' = Framingham.QTc,
      'Hodges' = Hodges.QTc
    )
    return(res)
  } else
  {
    warning('Could not identify QT Interval length with the information provided.
            Please make sure you provided the correct values for the variable <units>.
            The accepted values for <units> are <small box> or <msec>.
            
            Also verify that you input <paper.size> and <QT.length> variables 
            in the correct character type. Both should be of the character type
            <integer>')
  }
}

# ASCVD
ASCVD = function(
  S = 0.9144,
  ind = 1,
  ind.coff = 60.69,
  mn = 1,
  mn.coff = 61.18
)
{
  res = 1-(S^(exp(ind*ind.coff-mn*mn.coff)))
  return(res)
}

# 'Mellengard-Sorbini Ideal PaO2' 
Ideal.Pao2 = function(
  age = 60
)
{
  # supine
  supine = 104 - (0.42*age)
  
  # seated
  seated = 104 - (0.27*age)
  
  # list res
  res = list(
    'Ideal PaO2 when seated' = seated, 
    'Ideal PaO2 when supine' = supine
  )
  return(res)
}

# Serum osmolarity
serum.osmolarity = function(
  serum.sodium=140,
  BUN=24,
  glucose=95,
  ethanol=0
)
{
  res= 2*serum.sodium + (BUN/2.8) + (glucose/18) + (ethanol/ 4.6)
  return(res)
}

# Anion gap
anion.gap = function(
  chloride=100, # mmol/L
  sodium = 140, # mmol/L
  bicarbonate = 24, # mmol/L
  albumin = 4 # g/dL
)
{
  # anion gap
  anion.gap = sodium - (chloride + bicarbonate)
  
  # Albumin corrected anion gap
  anion.gap.albumin.corrected = anion.gap + (2.5 * (4 - albumin))
  
  # Delta gap
  delta.gap = anion.gap - 12
  
  # albumin corrected delta gap
  albumin.corrected.delta.gap = anion.gap.albumin.corrected - 12
  
  # delta ration
  delta.ratio = delta.gap / (24 - bicarbonate)
  
  # Albumin corrected delta ratio
  delta.ratio.albumin.corrected = albumin.corrected.delta.gap / (24 - bicarbonate)
  
  # res
  res = list(
    'Anion Gap' = anion.gap,
    'Albumin Corrected Anion Gap' = anion.gap.albumin.corrected,
    'Delta Gap' = delta.gap,
    'Albumin Corrected Delta Gap' = albumin.corrected.delta.gap,
    'Delta Ratio' = delta.ratio,
    'Albumin Corrected Delta Ratio' = delta.ratio.albumin.corrected
  )
  return(res)
}

# 'SIRS, Sepsis and septic shock' = SIRS.Sepsis.SepticShock,
SIRS.Sepsis.Septic = function(
  HR = 90,
  RR = 20,
  temp = 38,
  PaCO2 = 32,
  WBC = 12000,
  percent.band.neutrofils = 10,
  source.of.infection = 'present', # suspected, absent
  lactic.acidosis = FALSE,
  sbp = 90,
  sbp.drop = 40,
  fluid.resuciation = FALSE,
  multi.organ.failure = FALSE
)
{
  sirs.score = 0
  if(temp > 38 | temp < 36)
  {
    sirs.score = sirs.score + 1
  }
  if(HR > 90)
  {
    sirs.score = sirs.score + 1
  }
  if(RR > 20 | PaCO2 < 32)
  {
    sirs.score = sirs.score + 1
  }
  if(WBC > 12000 | WBC < 4000 | percent.band.neutrofils > 10)
  {
    sirs.score = sirs.score + 1
  }
  if(sirs.score > 1)
  {
    sirs = TRUE
  }else
  {
    sirs = FALSE
  }
  
  # sepsis
  if(sirs & (source.of.infection == 'present' | source.of.infection == 'suspected'))
  {
    sepsis = TRUE
  }else
  {
    sepsis = FALSE
  }
  
  # severe sepsis
  if(sepsis & (sbp < 90 | sbp.drop >= 40 | lactic.acidosis) )
  {
    severe.sepsis = TRUE
  }else
  {
    severe.sepsis = FALSE
  }
  
  # septic shock
  if(severe.sepsis & fluid.resuciation)
  {
    septic.shock = TRUE
  }else
  {
    septic.shock = FALSE
  }
  
  # Multi organ dysfunction syndrome
  if(septic.shock & multi.organ.failure)
  {
    multi.organ.dysfunction.syndrome = TRUE
  }else
  {
    multi.organ.dysfunction.syndrome = FALSE
  }
  criteria = list(
    'The patient meets criteria for SIRS' = sirs,
    'The patient meets criteria for sepsis' = sepsis,
    'The patient meets criteria for severe sepsis' = severe.sepsis,
    'The patient meets criteria for septic shock' = septic.shock,
    'The patient meets criteria for multi organ dysfunction syndrome' = multi.organ.dysfunction.syndrome
  )
  # res = list(
  #   'criteria meet' = names(ccvr[unlist(ccvr)]),
  #   'results for all criteria' = criteria
  # )
  if( !(sirs & sepsis & severe.sepsis & septic.shock & multi.organ.dysfunction.syndrome) )
  {
    res = 'The patient does not meet any criteria'
  }else
  {
    res = names(criteria[unlist(criteria)])
  }
  return(res)
}

# Winter's Formula
Winters.Formula = function(
  bicarb = 24
)
{
  Expected.pCO2 = c(
    lower.bound = 1.5 * bicarb + 8 - 2,
    upper.bound = 1.5 * bicarb + 8 + 2
  )
  return(Expected.pCO2)
}

# Free water deficit (divide by 24 for rate of 0.45%)
# (divide by 4 for rate of tap water every six hours)
free.water.deficit = function(
  weight = 50, # kilograms
  current.sodium = 152,
  ideal.sodium = 140, 
  sex = 'male',
  age = 40
)
{
  # get total body water
  if(age < 18)
  {
    total.body.water=0.60
  }else if(sex == 'male' | age < 65)
  {
    total.body.water=0.60
  }else if(sex=='male' | age >= 65)
  {
    total.body.water=0.5
  }else if(sex == 'female' | age <65)
  {
    total.body.water=0.5
  }else if(sex == 'female' | age >= 65)
  {
    total.body.water=0.45
  }
  
  # free water deficit
  free.water.deficit = total.body.water*weight*(current.sodium / ideal.sodium - 1)
  cat('Free water deficit in Liters: ', free.water.deficit);cat('', sep = '\n')
  return(free.water.deficit)
}

# ACLS easy
acls.easy = function(
  pulse=TRUE,
  rhythm = 'normal sinus rhythm', # 'afib/flutter', 'vtach/vfib', 'sinus tach', 'svt'
  symptoms = TRUE,
  stable = TRUE
)
{
  # medication doses in ACLS
  dosing = list(
    'epinephrine' = '1 mg IV, can increase to 1 mg',
    'Amiodarone' = '300 mg IV for first dose, continue with 150 mg subsequent doses',
    'Adenosine' = '6 mg IV. Can increase to 12 mg',
    'Atropine' = '1 mg IV (initial), max dose 3 mg',
    'Beta Blocker (propanolol)' = '1-3mg IV',
    'Calcium Channel Blocker (Diltiazem)' = '20m mg IV, 25 mg IV max'
  )
  if(pulse)
  {
    if((rhythm == 'normal sinus rhythm' | rhythm == 'sinus tach'))
    {
      action='Do nothing'
    }else if( (rhythm != 'normal sinus rhythm' & rhythm  != 'sinus tach') & !(symptoms) )
    {
      action='O2, IVF, Monitor'
    }else if( (rhythm != 'normal sinus rhythm' & rhythm  != 'sinus tach') & symptoms)
    {
      if(stable)
      {
        if(rhythm == 'afib/flutter')
        {
          action='Use drugs: No CHF: Beta Blocker or Calcium Channel Blocker | CHF: Amiodarone, Digoxin'
        }else
        {
          action='Use drugs: Fast & Narrow = Adenosine | Fast & Wide = Amiodarone | Slow = Atropine & prepare to pace ||| After 3 doses consider CCB or Beta Blockers'
        }
      }else if(!(stable))
      {
        action='Use electricity: Shock Fast Rhythm (synchronized cardioversion) | Pace Slow Rhythm'
      }
    }
  }else if(!(pulse))
  {
    if(rhythm == 'vtach/vfib')
    {
      action='CPR for 2 minutes > pulse check, rhythm check, shock > Epinephrine > CPR for 2 minutes > pulse check, rhythm check, shock > Amiodarone'
    }else
    {
      action='CPR for 2 minutes > pulse check, rhythm check, shock > Epinephrine > CPR for 2 minutes > pulse check, rhythm check, shock > Absent'
    }
  }else
  {
    warning('Please input a valid value for pulse. It can be either TRUE or FALSE')
  }
  res = list(
    'suggested action' = action,
    'Medication doses' = dosing
  )
  return(res)
}

# 'Wells Criteria for PE' = Wells.pe,
# 'Wells Criteria for DVT' = Wells.dvt,

# 'MELD score' = meld.score,
# 'HAS-BLED' = has.bled,
# 'HEART' = heart.score,
# 'Centor Score for Strep Pharyngitis' = Centor.Strep,
# 'Child-Pugh' = Child.Pugh,
# 'Corrected QT Interval' = QTc,
# 'PERC rule for PE' = PERC.pe,
# 'Absolute Neutrophil count' = ANC,
# 'Revised Cardiac Risk index - Preoperative' = revised.cardiac.risk,
# 'NIH Stroke Scale' = NIHSS,
# "APACHE II score" = APACHE.II,
# 'CIWA score for alcohol withdrawal' = ciwar


# The estimated 10-year risk of a first hard ASCVD event is formally calculated 
# as 1 minus the survival rate at 10 years (“Baseline Survival” in Table A), raised to the
# power of the exponent of the “Coefficient × Value” sum minus the race- 
# and sex-specific overall mean “Coefficient × Value” sum; or, in equation form:

# list of functions available
fs=list(
  # "APACHE II score" = APACHE.II,
  # 'MELD score' = meld.score,
  # 'HAS-BLED' = has.bled,
  # 'HEART' = heart.score,
  # 'Centor Score for Strep Pharyngitis' = Centor.Strep,
  # 'Child-Pugh' = Child.Pugh,
  # 'PERC rule for PE' = PERC.pe,
  # 'Absolute Neutrophil count' = ANC,
  # 'Revised Cardiac Risk index - Preoperative' = revised.cardiac.risk,
  # 'NIH Stroke Scale' = NIHSS,
  # 'CIWA score for alcohol withdrawal' = ciwar
  # NYHA
  # ASCVD
  # 'Atherosclerotic Cardiovascular Disease' = ASCVD, 
  
  # free water deficit
  'Mellengard-Sorbini Ideal PaO2' = Ideal.Pao2,
  'Serum Osmolarity from BMP' = serum.osmolarity,
  'Fraction of Excreted urea' = FEurea,
  'Corrected QT interval' = QTc,
  'TIMI Risk score fo UA/nSTEMI, STEMI and ACS' = TIMI,
  'CURB-65 Score for Pneumonia' = curb65,
  'Quick SOFA score for sepsis' = qSOFA,
  'Maintenance fluids' = Maintenance.Fluids,
  'Sodium Correction for Hyperglycemia' = sodium.correct,
  "A-a gradient" = Aa.gradient.cal,
  "Calcium Correction" = corrected.calcium.calc,
  "Creatinine Clearance" = creatinine.clearance,
  "Fraction of excreted sodium" = FENa,
  "Mean arterial pressure" = map.calc,
  'CHADS-VASc' = CHADSVASc,
  "Glasgow Comma Scale" = Glasgow,
  'ICH score' = ich.score,
  'Winters Formula' = Winters.Formula,
  'Anion Gap' = anion.gap,
  'ACLS' = acls.easy
)

# GUI function
run.gui= function(
  
)
{
  miniGUI::miniGUI(
    title = 'inteRn',
    opFuns = fs
  )
}
