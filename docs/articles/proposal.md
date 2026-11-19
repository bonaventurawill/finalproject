# BST260 Final Project Proposal

## Analysis 1:

### Research Question:

Among those outbreaks where drinking water was responsible, how is water
type related to the presence of \>= 1 death stemming from the outbreak,
adjusting for etiology and illnesses.

### Unit of Analysis and Population

The unit of analysis is a specific waterborne illness outbreak. The
original dataset was provided by the CDC, and for the purposes of this
analysis, the population at hand is all waterborne outbreaks in which
the type of exposure included drinking water. The sample size for this
population is 1286 (pre-removal of missing data, other decisions, etc.).

### Exposure Variable(s)

The exposure variable(s) in this analysis include our main effect ‘water
type’, as well as covariates (and potential confounders) etiology and
number of illnesses. Water type I will code as (nominal) categorical,
and will exclude units of analysis with missing information (or of
unknown type). Etiology will also be coded categorically, while
illnesses will be coded as (numeric) continuous. As for the main effect,
those outbreaks with either missing etiological or illness data will be
excluded.

### Outcome Variable

The outcome variable in this analysis will be coded into a binary
(dichotomous) outcome variable representing whether or not \>= 1 death
occured from this outbreak. Therefore, it is dichotomous categorical,
and will be assessed via a logistic regression model.

### Confounder(s)

The potential confounders I choose to assess for this analysis include
etiology and illnesses. Regarding etiology, I choose this as different
pathogens vary in their lethality, and this etiology may also be
assocatied with the particular water type. It will be coded a nominal
categorical variables. Regarding illnesses, this serves as a proxy
covariate representing the spread (person-count wise) of the outbreak,
which influences the presence of \>=1 deaths of the outbreak, and may be
assocaited with water type.

## Analysis 2:

### Research Question:

Has the age-adjusted firearm mortality rate changed differently, from
2005 to 2024, across different US census regions? Put another way, is
census region an effect modifier in the relationship between time and
age-adjusted fire arm mortality rate.

### Unit of Analysis and Population

The unit of analysis here is the specific firearm mortality information
for a particular state, for a particular year. The population is state
firearm mortality data between the years of 2005 and 2024, and is
provided in a dataset from the CDC.

### Exposure Variable(s)

Our main effect exposure variable will be continuous year, and will ran
from 2005 to 2024. I will code it as a numeric, continuous variable. Our
other covariate, for which we are assessing as a potential effect
modifier, will be a new variable (that I will defined and code) called
region. This will be coded at a (nominal) categorical variable, and will
have several categories.

### Outcome Variable

The outcome variable here is a continuous variable that represents the
age-adjusted firearm mortality rate (per 100,000 people)

### Confounder(s)

Due to how few variables are included in this CDC dataset, I am not
considering potential confounder covariates in this analysis.
