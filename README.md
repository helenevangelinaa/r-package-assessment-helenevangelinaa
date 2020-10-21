
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19shiny

<!-- badges: start -->

<!-- badges: end -->

The goal of covid19shiny is to provide users with a shinydashboard
created by using `shiny` and `shinydashboard` package, presenting the
state of COVID-19 in the world, which is enhanced with user
interactions. There are also some functions inside the package. The
shiny application could be launched by using `launch_app()` function
inside the package. This shinydashboard would allow users to gain
insights of COVID-19 state in the world.

List of data inside the package:  
\- **covid19wrangled** is the wrangled version of the data taken from
`download_merged_data` from
[tidycovid19](https://github.com/joachim-gassen/tidycovid19) package  
\- **covid19total** presents the summary of COVID-19 cases per country,
showing total confirmed cases, total deaths and total recovered cases of
a country alongside with other information  
\- **worldshp** is a world shape file needed to create a map

List of functions inside the package:  
\- **launch\_app** would launch the shiny application showing the state
of COVID-19 in the world  
\- **selectInput01** would produce the selectInput from `shiny`
according to the inputs provided  
\- **dailyplot** would create a line graph showing either the daily
confirmed cases, daily death, or daily recovered according to the inputs
specified. The input `variable_name` would change the y-axis of the line
graph to represent the variable  
\- **covidtable** would produce a table by using the `DT` package, which
is based on the specified dataset

More information on the package can be found on the [pkgdown
website](...).

## Installation

You can install the development version of `covid19shiny` package with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-helenevangelinaa")
```

??????????This package depends on `tidycovid19` so download that first

## Launching the app

This is a basic example on how to launch the shiny dashboard:

``` r
library(covid19shiny)
launch_app()
```

## Usage

The functions inside the package were made to simplify the R codes to
create the shiny application, as well as to make it easier for users to
produce the plot and table desired.

Here is an example of how to use the package to generate the dataset:

``` r
kable(covid19total)
```

``` r
kable(covid19total)
```

<table>

<thead>

<tr>

<th style="text-align:left;">

country

</th>

<th style="text-align:right;">

confirmed

</th>

<th style="text-align:right;">

deaths

</th>

<th style="text-align:right;">

recovered

</th>

<th style="text-align:left;">

region

</th>

<th style="text-align:right;">

population

</th>

<th style="text-align:right;">

latitude

</th>

<th style="text-align:right;">

longitude

</th>

<th style="text-align:right;">

caseper10000

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Afghanistan

</td>

<td style="text-align:right;">

40141

</td>

<td style="text-align:right;">

1488

</td>

<td style="text-align:right;">

33561

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

38041754

</td>

<td style="text-align:right;">

33.939110

</td>

<td style="text-align:right;">

67.709953

</td>

<td style="text-align:right;">

10.5518268

</td>

</tr>

<tr>

<td style="text-align:left;">

Angola

</td>

<td style="text-align:right;">

7462

</td>

<td style="text-align:right;">

241

</td>

<td style="text-align:right;">

3022

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

31825295

</td>

<td style="text-align:right;">

\-11.202692

</td>

<td style="text-align:right;">

17.873887

</td>

<td style="text-align:right;">

2.3446758

</td>

</tr>

<tr>

<td style="text-align:left;">

Albania

</td>

<td style="text-align:right;">

16774

</td>

<td style="text-align:right;">

448

</td>

<td style="text-align:right;">

10001

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2854191

</td>

<td style="text-align:right;">

41.153332

</td>

<td style="text-align:right;">

20.168331

</td>

<td style="text-align:right;">

58.7697179

</td>

</tr>

<tr>

<td style="text-align:left;">

Andorra

</td>

<td style="text-align:right;">

3377

</td>

<td style="text-align:right;">

59

</td>

<td style="text-align:right;">

2057

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

77142

</td>

<td style="text-align:right;">

42.546245

</td>

<td style="text-align:right;">

1.601554

</td>

<td style="text-align:right;">

437.7641233

</td>

</tr>

<tr>

<td style="text-align:left;">

United Arab Emirates

</td>

<td style="text-align:right;">

114387

</td>

<td style="text-align:right;">

459

</td>

<td style="text-align:right;">

106354

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

9770529

</td>

<td style="text-align:right;">

23.424076

</td>

<td style="text-align:right;">

53.847818

</td>

<td style="text-align:right;">

117.0734972

</td>

</tr>

<tr>

<td style="text-align:left;">

Argentina

</td>

<td style="text-align:right;">

979119

</td>

<td style="text-align:right;">

26107

</td>

<td style="text-align:right;">

791174

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

44938712

</td>

<td style="text-align:right;">

\-38.416097

</td>

<td style="text-align:right;">

\-63.616672

</td>

<td style="text-align:right;">

217.8787412

</td>

</tr>

<tr>

<td style="text-align:left;">

Armenia

</td>

<td style="text-align:right;">

63000

</td>

<td style="text-align:right;">

1067

</td>

<td style="text-align:right;">

47925

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2957731

</td>

<td style="text-align:right;">

40.069099

</td>

<td style="text-align:right;">

45.038189

</td>

<td style="text-align:right;">

213.0011147

</td>

</tr>

<tr>

<td style="text-align:left;">

Antigua & Barbuda

</td>

<td style="text-align:right;">

119

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

101

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

97118

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

12.2531354

</td>

</tr>

<tr>

<td style="text-align:left;">

Australia

</td>

<td style="text-align:right;">

27390

</td>

<td style="text-align:right;">

904

</td>

<td style="text-align:right;">

25098

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

25364307

</td>

<td style="text-align:right;">

\-25.274398

</td>

<td style="text-align:right;">

133.775136

</td>

<td style="text-align:right;">

10.7986392

</td>

</tr>

<tr>

<td style="text-align:left;">

Austria

</td>

<td style="text-align:right;">

63134

</td>

<td style="text-align:right;">

889

</td>

<td style="text-align:right;">

48771

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

8877067

</td>

<td style="text-align:right;">

47.516231

</td>

<td style="text-align:right;">

14.550072

</td>

<td style="text-align:right;">

71.1203374

</td>

</tr>

<tr>

<td style="text-align:left;">

Azerbaijan

</td>

<td style="text-align:right;">

44317

</td>

<td style="text-align:right;">

623

</td>

<td style="text-align:right;">

39903

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

10023318

</td>

<td style="text-align:right;">

40.143105

</td>

<td style="text-align:right;">

47.576927

</td>

<td style="text-align:right;">

44.2139020

</td>

</tr>

<tr>

<td style="text-align:left;">

Burundi

</td>

<td style="text-align:right;">

536

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

497

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

11530580

</td>

<td style="text-align:right;">

\-3.373056

</td>

<td style="text-align:right;">

29.918886

</td>

<td style="text-align:right;">

0.4648509

</td>

</tr>

<tr>

<td style="text-align:left;">

Belgium

</td>

<td style="text-align:right;">

213115

</td>

<td style="text-align:right;">

10392

</td>

<td style="text-align:right;">

21074

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

11484055

</td>

<td style="text-align:right;">

50.503887

</td>

<td style="text-align:right;">

4.469936

</td>

<td style="text-align:right;">

185.5746947

</td>

</tr>

<tr>

<td style="text-align:left;">

Benin

</td>

<td style="text-align:right;">

2496

</td>

<td style="text-align:right;">

41

</td>

<td style="text-align:right;">

2330

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

11801151

</td>

<td style="text-align:right;">

9.307690

</td>

<td style="text-align:right;">

2.315834

</td>

<td style="text-align:right;">

2.1150479

</td>

</tr>

<tr>

<td style="text-align:left;">

Burkina Faso

</td>

<td style="text-align:right;">

2343

</td>

<td style="text-align:right;">

65

</td>

<td style="text-align:right;">

1718

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

20321378

</td>

<td style="text-align:right;">

12.238333

</td>

<td style="text-align:right;">

\-1.561593

</td>

<td style="text-align:right;">

1.1529730

</td>

</tr>

<tr>

<td style="text-align:left;">

Bangladesh

</td>

<td style="text-align:right;">

387295

</td>

<td style="text-align:right;">

5646

</td>

<td style="text-align:right;">

302298

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

163046161

</td>

<td style="text-align:right;">

23.684994

</td>

<td style="text-align:right;">

90.356331

</td>

<td style="text-align:right;">

23.7537025

</td>

</tr>

<tr>

<td style="text-align:left;">

Bulgaria

</td>

<td style="text-align:right;">

29108

</td>

<td style="text-align:right;">

968

</td>

<td style="text-align:right;">

16912

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

6975761

</td>

<td style="text-align:right;">

42.733883

</td>

<td style="text-align:right;">

25.485830

</td>

<td style="text-align:right;">

41.7273470

</td>

</tr>

<tr>

<td style="text-align:left;">

Bahrain

</td>

<td style="text-align:right;">

77571

</td>

<td style="text-align:right;">

293

</td>

<td style="text-align:right;">

73841

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

1641172

</td>

<td style="text-align:right;">

25.930414

</td>

<td style="text-align:right;">

50.637772

</td>

<td style="text-align:right;">

472.6561262

</td>

</tr>

<tr>

<td style="text-align:left;">

Bahamas

</td>

<td style="text-align:right;">

5628

</td>

<td style="text-align:right;">

116

</td>

<td style="text-align:right;">

3276

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

389482

</td>

<td style="text-align:right;">

25.034280

</td>

<td style="text-align:right;">

\-77.396280

</td>

<td style="text-align:right;">

144.4996174

</td>

</tr>

<tr>

<td style="text-align:left;">

Bosnia & Herzegovina

</td>

<td style="text-align:right;">

33561

</td>

<td style="text-align:right;">

981

</td>

<td style="text-align:right;">

24773

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

3301000

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

101.6691912

</td>

</tr>

<tr>

<td style="text-align:left;">

Belarus

</td>

<td style="text-align:right;">

87063

</td>

<td style="text-align:right;">

925

</td>

<td style="text-align:right;">

79429

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

9466856

</td>

<td style="text-align:right;">

53.709807

</td>

<td style="text-align:right;">

27.953389

</td>

<td style="text-align:right;">

91.9661184

</td>

</tr>

<tr>

<td style="text-align:left;">

Belize

</td>

<td style="text-align:right;">

2775

</td>

<td style="text-align:right;">

43

</td>

<td style="text-align:right;">

1648

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

390353

</td>

<td style="text-align:right;">

17.189877

</td>

<td style="text-align:right;">

\-88.497650

</td>

<td style="text-align:right;">

71.0895010

</td>

</tr>

<tr>

<td style="text-align:left;">

Bolivia

</td>

<td style="text-align:right;">

139710

</td>

<td style="text-align:right;">

8463

</td>

<td style="text-align:right;">

104202

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

11513100

</td>

<td style="text-align:right;">

\-16.290154

</td>

<td style="text-align:right;">

\-63.588653

</td>

<td style="text-align:right;">

121.3487245

</td>

</tr>

<tr>

<td style="text-align:left;">

Brazil

</td>

<td style="text-align:right;">

5224362

</td>

<td style="text-align:right;">

153675

</td>

<td style="text-align:right;">

4526393

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

211049527

</td>

<td style="text-align:right;">

\-14.235004

</td>

<td style="text-align:right;">

\-51.925280

</td>

<td style="text-align:right;">

247.5419905

</td>

</tr>

<tr>

<td style="text-align:left;">

Barbados

</td>

<td style="text-align:right;">

219

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

195

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

287025

</td>

<td style="text-align:right;">

13.193887

</td>

<td style="text-align:right;">

\-59.543198

</td>

<td style="text-align:right;">

7.6299974

</td>

</tr>

<tr>

<td style="text-align:left;">

Brunei

</td>

<td style="text-align:right;">

147

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

143

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

433285

</td>

<td style="text-align:right;">

4.535277

</td>

<td style="text-align:right;">

114.727669

</td>

<td style="text-align:right;">

3.3926861

</td>

</tr>

<tr>

<td style="text-align:left;">

Bhutan

</td>

<td style="text-align:right;">

325

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

299

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

763092

</td>

<td style="text-align:right;">

27.514162

</td>

<td style="text-align:right;">

90.433601

</td>

<td style="text-align:right;">

4.2589884

</td>

</tr>

<tr>

<td style="text-align:left;">

Botswana

</td>

<td style="text-align:right;">

5242

</td>

<td style="text-align:right;">

20

</td>

<td style="text-align:right;">

905

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

2303697

</td>

<td style="text-align:right;">

\-22.328474

</td>

<td style="text-align:right;">

24.684866

</td>

<td style="text-align:right;">

22.7547286

</td>

</tr>

<tr>

<td style="text-align:left;">

Central African Republic

</td>

<td style="text-align:right;">

4855

</td>

<td style="text-align:right;">

62

</td>

<td style="text-align:right;">

1924

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

4745185

</td>

<td style="text-align:right;">

6.611111

</td>

<td style="text-align:right;">

20.939444

</td>

<td style="text-align:right;">

10.2314241

</td>

</tr>

<tr>

<td style="text-align:left;">

Canada

</td>

<td style="text-align:right;">

197067

</td>

<td style="text-align:right;">

9782

</td>

<td style="text-align:right;">

166444

</td>

<td style="text-align:left;">

North America

</td>

<td style="text-align:right;">

37589262

</td>

<td style="text-align:right;">

56.130366

</td>

<td style="text-align:right;">

\-106.346771

</td>

<td style="text-align:right;">

52.4264084

</td>

</tr>

<tr>

<td style="text-align:left;">

Switzerland

</td>

<td style="text-align:right;">

74422

</td>

<td style="text-align:right;">

2122

</td>

<td style="text-align:right;">

50600

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

8574832

</td>

<td style="text-align:right;">

46.818188

</td>

<td style="text-align:right;">

8.227512

</td>

<td style="text-align:right;">

86.7912048

</td>

</tr>

<tr>

<td style="text-align:left;">

Chile

</td>

<td style="text-align:right;">

490003

</td>

<td style="text-align:right;">

13588

</td>

<td style="text-align:right;">

462712

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

18952038

</td>

<td style="text-align:right;">

\-35.675147

</td>

<td style="text-align:right;">

\-71.542969

</td>

<td style="text-align:right;">

258.5489750

</td>

</tr>

<tr>

<td style="text-align:left;">

China

</td>

<td style="text-align:right;">

90955

</td>

<td style="text-align:right;">

4739

</td>

<td style="text-align:right;">

85791

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

1397715000

</td>

<td style="text-align:right;">

35.861660

</td>

<td style="text-align:right;">

104.195397

</td>

<td style="text-align:right;">

0.6507407

</td>

</tr>

<tr>

<td style="text-align:left;">

Côte d’Ivoire

</td>

<td style="text-align:right;">

20301

</td>

<td style="text-align:right;">

121

</td>

<td style="text-align:right;">

19983

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

25716544

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

7.8941401

</td>

</tr>

<tr>

<td style="text-align:left;">

Cameroon

</td>

<td style="text-align:right;">

21441

</td>

<td style="text-align:right;">

423

</td>

<td style="text-align:right;">

20117

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

25876380

</td>

<td style="text-align:right;">

7.369722

</td>

<td style="text-align:right;">

12.354722

</td>

<td style="text-align:right;">

8.2859349

</td>

</tr>

<tr>

<td style="text-align:left;">

Congo - Kinshasa

</td>

<td style="text-align:right;">

11000

</td>

<td style="text-align:right;">

302

</td>

<td style="text-align:right;">

10342

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

86790567

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1.2674188

</td>

</tr>

<tr>

<td style="text-align:left;">

Congo - Brazzaville

</td>

<td style="text-align:right;">

5156

</td>

<td style="text-align:right;">

92

</td>

<td style="text-align:right;">

3887

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

5380508

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

9.5827383

</td>

</tr>

<tr>

<td style="text-align:left;">

Colombia

</td>

<td style="text-align:right;">

952371

</td>

<td style="text-align:right;">

28803

</td>

<td style="text-align:right;">

847467

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

50339443

</td>

<td style="text-align:right;">

4.570868

</td>

<td style="text-align:right;">

\-74.297333

</td>

<td style="text-align:right;">

189.1898168

</td>

</tr>

<tr>

<td style="text-align:left;">

Comoros

</td>

<td style="text-align:right;">

502

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

485

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

850886

</td>

<td style="text-align:right;">

\-11.875001

</td>

<td style="text-align:right;">

43.872219

</td>

<td style="text-align:right;">

5.8997327

</td>

</tr>

<tr>

<td style="text-align:left;">

Cape Verde

</td>

<td style="text-align:right;">

7638

</td>

<td style="text-align:right;">

85

</td>

<td style="text-align:right;">

6473

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

549935

</td>

<td style="text-align:right;">

16.002082

</td>

<td style="text-align:right;">

\-24.013197

</td>

<td style="text-align:right;">

138.8891414

</td>

</tr>

<tr>

<td style="text-align:left;">

Costa Rica

</td>

<td style="text-align:right;">

95514

</td>

<td style="text-align:right;">

1183

</td>

<td style="text-align:right;">

58816

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

5047561

</td>

<td style="text-align:right;">

9.748917

</td>

<td style="text-align:right;">

\-83.753428

</td>

<td style="text-align:right;">

189.2280252

</td>

</tr>

<tr>

<td style="text-align:left;">

Cuba

</td>

<td style="text-align:right;">

6170

</td>

<td style="text-align:right;">

125

</td>

<td style="text-align:right;">

5753

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

11333483

</td>

<td style="text-align:right;">

21.521757

</td>

<td style="text-align:right;">

\-77.781167

</td>

<td style="text-align:right;">

5.4440458

</td>

</tr>

<tr>

<td style="text-align:left;">

Cyprus

</td>

<td style="text-align:right;">

2581

</td>

<td style="text-align:right;">

25

</td>

<td style="text-align:right;">

1444

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

1198575

</td>

<td style="text-align:right;">

35.126413

</td>

<td style="text-align:right;">

33.429859

</td>

<td style="text-align:right;">

21.5339048

</td>

</tr>

<tr>

<td style="text-align:left;">

Czechia

</td>

<td style="text-align:right;">

168827

</td>

<td style="text-align:right;">

1352

</td>

<td style="text-align:right;">

68945

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

10669709

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

158.2301823

</td>

</tr>

<tr>

<td style="text-align:left;">

Germany

</td>

<td style="text-align:right;">

364664

</td>

<td style="text-align:right;">

9785

</td>

<td style="text-align:right;">

291129

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

83132799

</td>

<td style="text-align:right;">

51.165691

</td>

<td style="text-align:right;">

10.451526

</td>

<td style="text-align:right;">

43.8652378

</td>

</tr>

<tr>

<td style="text-align:left;">

Djibouti

</td>

<td style="text-align:right;">

5452

</td>

<td style="text-align:right;">

61

</td>

<td style="text-align:right;">

5373

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

973560

</td>

<td style="text-align:right;">

11.825138

</td>

<td style="text-align:right;">

42.590275

</td>

<td style="text-align:right;">

56.0006574

</td>

</tr>

<tr>

<td style="text-align:left;">

Dominica

</td>

<td style="text-align:right;">

33

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

29

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

71808

</td>

<td style="text-align:right;">

15.414999

</td>

<td style="text-align:right;">

\-61.370976

</td>

<td style="text-align:right;">

4.5955882

</td>

</tr>

<tr>

<td style="text-align:left;">

Denmark

</td>

<td style="text-align:right;">

35440

</td>

<td style="text-align:right;">

679

</td>

<td style="text-align:right;">

29403

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

5818553

</td>

<td style="text-align:right;">

56.263920

</td>

<td style="text-align:right;">

9.501785

</td>

<td style="text-align:right;">

60.9086142

</td>

</tr>

<tr>

<td style="text-align:left;">

Dominican Republic

</td>

<td style="text-align:right;">

120925

</td>

<td style="text-align:right;">

2195

</td>

<td style="text-align:right;">

97575

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

10738958

</td>

<td style="text-align:right;">

18.735693

</td>

<td style="text-align:right;">

\-70.162651

</td>

<td style="text-align:right;">

112.6040348

</td>

</tr>

<tr>

<td style="text-align:left;">

Algeria

</td>

<td style="text-align:right;">

54203

</td>

<td style="text-align:right;">

1846

</td>

<td style="text-align:right;">

37971

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

43053054

</td>

<td style="text-align:right;">

28.033886

</td>

<td style="text-align:right;">

1.659626

</td>

<td style="text-align:right;">

12.5898153

</td>

</tr>

<tr>

<td style="text-align:left;">

Ecuador

</td>

<td style="text-align:right;">

152422

</td>

<td style="text-align:right;">

12375

</td>

<td style="text-align:right;">

128134

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

17373662

</td>

<td style="text-align:right;">

\-1.831239

</td>

<td style="text-align:right;">

\-78.183406

</td>

<td style="text-align:right;">

87.7316481

</td>

</tr>

<tr>

<td style="text-align:left;">

Egypt

</td>

<td style="text-align:right;">

105297

</td>

<td style="text-align:right;">

6109

</td>

<td style="text-align:right;">

98157

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

100388073

</td>

<td style="text-align:right;">

26.820553

</td>

<td style="text-align:right;">

30.802498

</td>

<td style="text-align:right;">

10.4889950

</td>

</tr>

<tr>

<td style="text-align:left;">

Eritrea

</td>

<td style="text-align:right;">

452

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

388

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

3213972

</td>

<td style="text-align:right;">

15.179384

</td>

<td style="text-align:right;">

39.782334

</td>

<td style="text-align:right;">

1.4063595

</td>

</tr>

<tr>

<td style="text-align:left;">

Spain

</td>

<td style="text-align:right;">

936560

</td>

<td style="text-align:right;">

33775

</td>

<td style="text-align:right;">

150376

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

47076781

</td>

<td style="text-align:right;">

40.463667

</td>

<td style="text-align:right;">

\-3.749220

</td>

<td style="text-align:right;">

198.9430841

</td>

</tr>

<tr>

<td style="text-align:left;">

Estonia

</td>

<td style="text-align:right;">

4052

</td>

<td style="text-align:right;">

68

</td>

<td style="text-align:right;">

3198

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

1326590

</td>

<td style="text-align:right;">

58.595272

</td>

<td style="text-align:right;">

25.013607

</td>

<td style="text-align:right;">

30.5444787

</td>

</tr>

<tr>

<td style="text-align:left;">

Ethiopia

</td>

<td style="text-align:right;">

88434

</td>

<td style="text-align:right;">

1346

</td>

<td style="text-align:right;">

42099

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

112078730

</td>

<td style="text-align:right;">

9.145000

</td>

<td style="text-align:right;">

40.489673

</td>

<td style="text-align:right;">

7.8903464

</td>

</tr>

<tr>

<td style="text-align:left;">

Finland

</td>

<td style="text-align:right;">

13293

</td>

<td style="text-align:right;">

351

</td>

<td style="text-align:right;">

9100

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

5520314

</td>

<td style="text-align:right;">

61.924110

</td>

<td style="text-align:right;">

25.748151

</td>

<td style="text-align:right;">

24.0801520

</td>

</tr>

<tr>

<td style="text-align:left;">

Fiji

</td>

<td style="text-align:right;">

32

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

30

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

889953

</td>

<td style="text-align:right;">

\-16.578193

</td>

<td style="text-align:right;">

179.414413

</td>

<td style="text-align:right;">

0.3595696

</td>

</tr>

<tr>

<td style="text-align:left;">

France

</td>

<td style="text-align:right;">

876342

</td>

<td style="text-align:right;">

33325

</td>

<td style="text-align:right;">

108014

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

67059887

</td>

<td style="text-align:right;">

46.227638

</td>

<td style="text-align:right;">

2.213749

</td>

<td style="text-align:right;">

130.6805065

</td>

</tr>

<tr>

<td style="text-align:left;">

Gabon

</td>

<td style="text-align:right;">

8881

</td>

<td style="text-align:right;">

54

</td>

<td style="text-align:right;">

8430

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

2172579

</td>

<td style="text-align:right;">

\-0.803689

</td>

<td style="text-align:right;">

11.609444

</td>

<td style="text-align:right;">

40.8776850

</td>

</tr>

<tr>

<td style="text-align:left;">

United Kingdom

</td>

<td style="text-align:right;">

708298

</td>

<td style="text-align:right;">

43669

</td>

<td style="text-align:right;">

2572

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

66834405

</td>

<td style="text-align:right;">

55.378051

</td>

<td style="text-align:right;">

\-3.435973

</td>

<td style="text-align:right;">

105.9780513

</td>

</tr>

<tr>

<td style="text-align:left;">

Georgia

</td>

<td style="text-align:right;">

16285

</td>

<td style="text-align:right;">

128

</td>

<td style="text-align:right;">

7827

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

3720382

</td>

<td style="text-align:right;">

42.315407

</td>

<td style="text-align:right;">

43.356892

</td>

<td style="text-align:right;">

43.7723868

</td>

</tr>

<tr>

<td style="text-align:left;">

Ghana

</td>

<td style="text-align:right;">

47232

</td>

<td style="text-align:right;">

310

</td>

<td style="text-align:right;">

46578

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

30417856

</td>

<td style="text-align:right;">

7.946527

</td>

<td style="text-align:right;">

\-1.023194

</td>

<td style="text-align:right;">

15.5277216

</td>

</tr>

<tr>

<td style="text-align:left;">

Guinea

</td>

<td style="text-align:right;">

11478

</td>

<td style="text-align:right;">

70

</td>

<td style="text-align:right;">

10425

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

12771246

</td>

<td style="text-align:right;">

9.945587

</td>

<td style="text-align:right;">

\-9.696645

</td>

<td style="text-align:right;">

8.9873768

</td>

</tr>

<tr>

<td style="text-align:left;">

Gambia

</td>

<td style="text-align:right;">

3649

</td>

<td style="text-align:right;">

118

</td>

<td style="text-align:right;">

2649

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

2347706

</td>

<td style="text-align:right;">

13.443182

</td>

<td style="text-align:right;">

\-15.310139

</td>

<td style="text-align:right;">

15.5428320

</td>

</tr>

<tr>

<td style="text-align:left;">

Guinea-Bissau

</td>

<td style="text-align:right;">

2389

</td>

<td style="text-align:right;">

41

</td>

<td style="text-align:right;">

1782

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

1920922

</td>

<td style="text-align:right;">

11.803749

</td>

<td style="text-align:right;">

\-15.180413

</td>

<td style="text-align:right;">

12.4367361

</td>

</tr>

<tr>

<td style="text-align:left;">

Equatorial Guinea

</td>

<td style="text-align:right;">

5070

</td>

<td style="text-align:right;">

83

</td>

<td style="text-align:right;">

4954

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

1355986

</td>

<td style="text-align:right;">

1.650801

</td>

<td style="text-align:right;">

10.267895

</td>

<td style="text-align:right;">

37.3897666

</td>

</tr>

<tr>

<td style="text-align:left;">

Greece

</td>

<td style="text-align:right;">

24932

</td>

<td style="text-align:right;">

500

</td>

<td style="text-align:right;">

1347

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

10716322

</td>

<td style="text-align:right;">

39.074208

</td>

<td style="text-align:right;">

21.824312

</td>

<td style="text-align:right;">

23.2654450

</td>

</tr>

<tr>

<td style="text-align:left;">

Grenada

</td>

<td style="text-align:right;">

27

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

24

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

112003

</td>

<td style="text-align:right;">

12.262776

</td>

<td style="text-align:right;">

\-61.604171

</td>

<td style="text-align:right;">

2.4106497

</td>

</tr>

<tr>

<td style="text-align:left;">

Guatemala

</td>

<td style="text-align:right;">

101028

</td>

<td style="text-align:right;">

3515

</td>

<td style="text-align:right;">

90001

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

16604026

</td>

<td style="text-align:right;">

15.783471

</td>

<td style="text-align:right;">

\-90.230759

</td>

<td style="text-align:right;">

60.8454841

</td>

</tr>

<tr>

<td style="text-align:left;">

Guyana

</td>

<td style="text-align:right;">

3710

</td>

<td style="text-align:right;">

109

</td>

<td style="text-align:right;">

2625

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

782766

</td>

<td style="text-align:right;">

4.860416

</td>

<td style="text-align:right;">

\-58.930180

</td>

<td style="text-align:right;">

47.3960290

</td>

</tr>

<tr>

<td style="text-align:left;">

Honduras

</td>

<td style="text-align:right;">

87594

</td>

<td style="text-align:right;">

2563

</td>

<td style="text-align:right;">

34662

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

9746117

</td>

<td style="text-align:right;">

15.199999

</td>

<td style="text-align:right;">

\-86.241905

</td>

<td style="text-align:right;">

89.8757936

</td>

</tr>

<tr>

<td style="text-align:left;">

Croatia

</td>

<td style="text-align:right;">

24761

</td>

<td style="text-align:right;">

355

</td>

<td style="text-align:right;">

19562

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

4067500

</td>

<td style="text-align:right;">

45.100000

</td>

<td style="text-align:right;">

15.200000

</td>

<td style="text-align:right;">

60.8752305

</td>

</tr>

<tr>

<td style="text-align:left;">

Haiti

</td>

<td style="text-align:right;">

8956

</td>

<td style="text-align:right;">

231

</td>

<td style="text-align:right;">

7213

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

11263077

</td>

<td style="text-align:right;">

18.971187

</td>

<td style="text-align:right;">

\-72.285215

</td>

<td style="text-align:right;">

7.9516459

</td>

</tr>

<tr>

<td style="text-align:left;">

Hungary

</td>

<td style="text-align:right;">

44816

</td>

<td style="text-align:right;">

1109

</td>

<td style="text-align:right;">

13580

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

9769949

</td>

<td style="text-align:right;">

47.162494

</td>

<td style="text-align:right;">

19.503304

</td>

<td style="text-align:right;">

45.8712732

</td>

</tr>

<tr>

<td style="text-align:left;">

Indonesia

</td>

<td style="text-align:right;">

357762

</td>

<td style="text-align:right;">

12431

</td>

<td style="text-align:right;">

281592

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

270625568

</td>

<td style="text-align:right;">

\-0.789275

</td>

<td style="text-align:right;">

113.921327

</td>

<td style="text-align:right;">

13.2198152

</td>

</tr>

<tr>

<td style="text-align:left;">

India

</td>

<td style="text-align:right;">

7494551

</td>

<td style="text-align:right;">

114031

</td>

<td style="text-align:right;">

6597209

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

1366417754

</td>

<td style="text-align:right;">

20.593684

</td>

<td style="text-align:right;">

78.962880

</td>

<td style="text-align:right;">

54.8481676

</td>

</tr>

<tr>

<td style="text-align:left;">

Ireland

</td>

<td style="text-align:right;">

48678

</td>

<td style="text-align:right;">

1849

</td>

<td style="text-align:right;">

23364

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

4941444

</td>

<td style="text-align:right;">

53.412910

</td>

<td style="text-align:right;">

\-8.243890

</td>

<td style="text-align:right;">

98.5096664

</td>

</tr>

<tr>

<td style="text-align:left;">

Iran

</td>

<td style="text-align:right;">

526490

</td>

<td style="text-align:right;">

30123

</td>

<td style="text-align:right;">

423921

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

82913906

</td>

<td style="text-align:right;">

32.427908

</td>

<td style="text-align:right;">

53.688046

</td>

<td style="text-align:right;">

63.4983956

</td>

</tr>

<tr>

<td style="text-align:left;">

Iraq

</td>

<td style="text-align:right;">

423524

</td>

<td style="text-align:right;">

10198

</td>

<td style="text-align:right;">

357291

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

39309783

</td>

<td style="text-align:right;">

33.223191

</td>

<td style="text-align:right;">

43.679291

</td>

<td style="text-align:right;">

107.7401012

</td>

</tr>

<tr>

<td style="text-align:left;">

Iceland

</td>

<td style="text-align:right;">

3998

</td>

<td style="text-align:right;">

11

</td>

<td style="text-align:right;">

2745

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

361313

</td>

<td style="text-align:right;">

64.963051

</td>

<td style="text-align:right;">

\-19.020835

</td>

<td style="text-align:right;">

110.6519832

</td>

</tr>

<tr>

<td style="text-align:left;">

Israel

</td>

<td style="text-align:right;">

302770

</td>

<td style="text-align:right;">

2190

</td>

<td style="text-align:right;">

265445

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

9053300

</td>

<td style="text-align:right;">

31.046051

</td>

<td style="text-align:right;">

34.851612

</td>

<td style="text-align:right;">

334.4305391

</td>

</tr>

<tr>

<td style="text-align:left;">

Italy

</td>

<td style="text-align:right;">

402536

</td>

<td style="text-align:right;">

36474

</td>

<td style="text-align:right;">

249127

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

60297396

</td>

<td style="text-align:right;">

41.871940

</td>

<td style="text-align:right;">

12.567380

</td>

<td style="text-align:right;">

66.7584385

</td>

</tr>

<tr>

<td style="text-align:left;">

Jamaica

</td>

<td style="text-align:right;">

8195

</td>

<td style="text-align:right;">

168

</td>

<td style="text-align:right;">

3653

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

2948279

</td>

<td style="text-align:right;">

18.109581

</td>

<td style="text-align:right;">

\-77.297508

</td>

<td style="text-align:right;">

27.7958768

</td>

</tr>

<tr>

<td style="text-align:left;">

Jordan

</td>

<td style="text-align:right;">

36053

</td>

<td style="text-align:right;">

330

</td>

<td style="text-align:right;">

6773

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

10101694

</td>

<td style="text-align:right;">

30.585164

</td>

<td style="text-align:right;">

36.238414

</td>

<td style="text-align:right;">

35.6900536

</td>

</tr>

<tr>

<td style="text-align:left;">

Japan

</td>

<td style="text-align:right;">

92670

</td>

<td style="text-align:right;">

1670

</td>

<td style="text-align:right;">

84461

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

126264931

</td>

<td style="text-align:right;">

36.204824

</td>

<td style="text-align:right;">

138.252924

</td>

<td style="text-align:right;">

7.3393300

</td>

</tr>

<tr>

<td style="text-align:left;">

Kazakhstan

</td>

<td style="text-align:right;">

109406

</td>

<td style="text-align:right;">

1768

</td>

<td style="text-align:right;">

105001

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

18513930

</td>

<td style="text-align:right;">

48.019573

</td>

<td style="text-align:right;">

66.923684

</td>

<td style="text-align:right;">

59.0938823

</td>

</tr>

<tr>

<td style="text-align:left;">

Kenya

</td>

<td style="text-align:right;">

44196

</td>

<td style="text-align:right;">

825

</td>

<td style="text-align:right;">

31752

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

52573973

</td>

<td style="text-align:right;">

\-0.023559

</td>

<td style="text-align:right;">

37.906193

</td>

<td style="text-align:right;">

8.4064410

</td>

</tr>

<tr>

<td style="text-align:left;">

Kyrgyzstan

</td>

<td style="text-align:right;">

51490

</td>

<td style="text-align:right;">

1108

</td>

<td style="text-align:right;">

45509

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

6456900

</td>

<td style="text-align:right;">

41.204380

</td>

<td style="text-align:right;">

74.766098

</td>

<td style="text-align:right;">

79.7441497

</td>

</tr>

<tr>

<td style="text-align:left;">

Cambodia

</td>

<td style="text-align:right;">

283

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

280

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

16486542

</td>

<td style="text-align:right;">

12.565679

</td>

<td style="text-align:right;">

104.990963

</td>

<td style="text-align:right;">

0.1716552

</td>

</tr>

<tr>

<td style="text-align:left;">

St. Kitts & Nevis

</td>

<td style="text-align:right;">

19

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

19

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

52823

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

3.5969180

</td>

</tr>

<tr>

<td style="text-align:left;">

South Korea

</td>

<td style="text-align:right;">

25199

</td>

<td style="text-align:right;">

444

</td>

<td style="text-align:right;">

23312

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

51709098

</td>

<td style="text-align:right;">

35.907757

</td>

<td style="text-align:right;">

127.766922

</td>

<td style="text-align:right;">

4.8732237

</td>

</tr>

<tr>

<td style="text-align:left;">

Kuwait

</td>

<td style="text-align:right;">

115483

</td>

<td style="text-align:right;">

694

</td>

<td style="text-align:right;">

107108

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

4207083

</td>

<td style="text-align:right;">

29.311660

</td>

<td style="text-align:right;">

47.481766

</td>

<td style="text-align:right;">

274.4966049

</td>

</tr>

<tr>

<td style="text-align:left;">

Laos

</td>

<td style="text-align:right;">

23

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

22

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

7169455

</td>

<td style="text-align:right;">

19.856270

</td>

<td style="text-align:right;">

102.495496

</td>

<td style="text-align:right;">

0.0320805

</td>

</tr>

<tr>

<td style="text-align:left;">

Lebanon

</td>

<td style="text-align:right;">

61284

</td>

<td style="text-align:right;">

517

</td>

<td style="text-align:right;">

27197

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

6855713

</td>

<td style="text-align:right;">

33.854721

</td>

<td style="text-align:right;">

35.862285

</td>

<td style="text-align:right;">

89.3911399

</td>

</tr>

<tr>

<td style="text-align:left;">

Liberia

</td>

<td style="text-align:right;">

1377

</td>

<td style="text-align:right;">

82

</td>

<td style="text-align:right;">

1268

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

4937374

</td>

<td style="text-align:right;">

6.428055

</td>

<td style="text-align:right;">

\-9.429499

</td>

<td style="text-align:right;">

2.7889319

</td>

</tr>

<tr>

<td style="text-align:left;">

Libya

</td>

<td style="text-align:right;">

47845

</td>

<td style="text-align:right;">

699

</td>

<td style="text-align:right;">

26062

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

6777452

</td>

<td style="text-align:right;">

26.335100

</td>

<td style="text-align:right;">

17.228331

</td>

<td style="text-align:right;">

70.5943768

</td>

</tr>

<tr>

<td style="text-align:left;">

St. Lucia

</td>

<td style="text-align:right;">

33

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

27

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

182790

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1.8053504

</td>

</tr>

<tr>

<td style="text-align:left;">

Liechtenstein

</td>

<td style="text-align:right;">

217

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

132

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

38019

</td>

<td style="text-align:right;">

47.166000

</td>

<td style="text-align:right;">

9.555373

</td>

<td style="text-align:right;">

57.0767248

</td>

</tr>

<tr>

<td style="text-align:left;">

Sri Lanka

</td>

<td style="text-align:right;">

5475

</td>

<td style="text-align:right;">

13

</td>

<td style="text-align:right;">

3395

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

21803000

</td>

<td style="text-align:right;">

7.873054

</td>

<td style="text-align:right;">

80.771797

</td>

<td style="text-align:right;">

2.5111223

</td>

</tr>

<tr>

<td style="text-align:left;">

Lesotho

</td>

<td style="text-align:right;">

1833

</td>

<td style="text-align:right;">

42

</td>

<td style="text-align:right;">

961

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

2125268

</td>

<td style="text-align:right;">

\-29.609988

</td>

<td style="text-align:right;">

28.233608

</td>

<td style="text-align:right;">

8.6247946

</td>

</tr>

<tr>

<td style="text-align:left;">

Lithuania

</td>

<td style="text-align:right;">

7269

</td>

<td style="text-align:right;">

113

</td>

<td style="text-align:right;">

3097

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2786844

</td>

<td style="text-align:right;">

55.169438

</td>

<td style="text-align:right;">

23.881275

</td>

<td style="text-align:right;">

26.0832684

</td>

</tr>

<tr>

<td style="text-align:left;">

Luxembourg

</td>

<td style="text-align:right;">

10471

</td>

<td style="text-align:right;">

133

</td>

<td style="text-align:right;">

8468

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

619896

</td>

<td style="text-align:right;">

49.815273

</td>

<td style="text-align:right;">

6.129583

</td>

<td style="text-align:right;">

168.9154310

</td>

</tr>

<tr>

<td style="text-align:left;">

Latvia

</td>

<td style="text-align:right;">

3392

</td>

<td style="text-align:right;">

43

</td>

<td style="text-align:right;">

1329

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

1912789

</td>

<td style="text-align:right;">

56.879635

</td>

<td style="text-align:right;">

24.603189

</td>

<td style="text-align:right;">

17.7332680

</td>

</tr>

<tr>

<td style="text-align:left;">

Morocco

</td>

<td style="text-align:right;">

170911

</td>

<td style="text-align:right;">

2878

</td>

<td style="text-align:right;">

141381

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

36471769

</td>

<td style="text-align:right;">

31.791702

</td>

<td style="text-align:right;">

\-7.092620

</td>

<td style="text-align:right;">

46.8611764

</td>

</tr>

<tr>

<td style="text-align:left;">

Monaco

</td>

<td style="text-align:right;">

260

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

217

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

38964

</td>

<td style="text-align:right;">

43.750298

</td>

<td style="text-align:right;">

7.412841

</td>

<td style="text-align:right;">

66.7282620

</td>

</tr>

<tr>

<td style="text-align:left;">

Moldova

</td>

<td style="text-align:right;">

66652

</td>

<td style="text-align:right;">

1569

</td>

<td style="text-align:right;">

47230

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2657637

</td>

<td style="text-align:right;">

47.411631

</td>

<td style="text-align:right;">

28.369885

</td>

<td style="text-align:right;">

250.7942206

</td>

</tr>

<tr>

<td style="text-align:left;">

Madagascar

</td>

<td style="text-align:right;">

16810

</td>

<td style="text-align:right;">

238

</td>

<td style="text-align:right;">

16215

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

26969307

</td>

<td style="text-align:right;">

\-18.766947

</td>

<td style="text-align:right;">

46.869107

</td>

<td style="text-align:right;">

6.2330115

</td>

</tr>

<tr>

<td style="text-align:left;">

Maldives

</td>

<td style="text-align:right;">

11178

</td>

<td style="text-align:right;">

36

</td>

<td style="text-align:right;">

10097

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

530953

</td>

<td style="text-align:right;">

3.202778

</td>

<td style="text-align:right;">

73.220680

</td>

<td style="text-align:right;">

210.5271088

</td>

</tr>

<tr>

<td style="text-align:left;">

Mexico

</td>

<td style="text-align:right;">

847108

</td>

<td style="text-align:right;">

86059

</td>

<td style="text-align:right;">

715848

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

127575529

</td>

<td style="text-align:right;">

23.634501

</td>

<td style="text-align:right;">

\-102.552784

</td>

<td style="text-align:right;">

66.4005085

</td>

</tr>

<tr>

<td style="text-align:left;">

North Macedonia

</td>

<td style="text-align:right;">

23201

</td>

<td style="text-align:right;">

824

</td>

<td style="text-align:right;">

17111

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2083459

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

111.3580829

</td>

</tr>

<tr>

<td style="text-align:left;">

Mali

</td>

<td style="text-align:right;">

3379

</td>

<td style="text-align:right;">

132

</td>

<td style="text-align:right;">

2570

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

19658031

</td>

<td style="text-align:right;">

17.570692

</td>

<td style="text-align:right;">

\-3.996166

</td>

<td style="text-align:right;">

1.7188904

</td>

</tr>

<tr>

<td style="text-align:left;">

Malta

</td>

<td style="text-align:right;">

4486

</td>

<td style="text-align:right;">

45

</td>

<td style="text-align:right;">

3184

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

502653

</td>

<td style="text-align:right;">

35.937496

</td>

<td style="text-align:right;">

14.375416

</td>

<td style="text-align:right;">

89.2464583

</td>

</tr>

<tr>

<td style="text-align:left;">

Myanmar (Burma)

</td>

<td style="text-align:right;">

34875

</td>

<td style="text-align:right;">

838

</td>

<td style="text-align:right;">

16370

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

54045420

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

6.4529057

</td>

</tr>

<tr>

<td style="text-align:left;">

Montenegro

</td>

<td style="text-align:right;">

15427

</td>

<td style="text-align:right;">

231

</td>

<td style="text-align:right;">

10768

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

622137

</td>

<td style="text-align:right;">

42.708678

</td>

<td style="text-align:right;">

19.374390

</td>

<td style="text-align:right;">

247.9678913

</td>

</tr>

<tr>

<td style="text-align:left;">

Mongolia

</td>

<td style="text-align:right;">

320

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

311

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

3225167

</td>

<td style="text-align:right;">

46.862496

</td>

<td style="text-align:right;">

103.846656

</td>

<td style="text-align:right;">

0.9921967

</td>

</tr>

<tr>

<td style="text-align:left;">

Mozambique

</td>

<td style="text-align:right;">

10707

</td>

<td style="text-align:right;">

74

</td>

<td style="text-align:right;">

8272

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

30366036

</td>

<td style="text-align:right;">

\-18.665695

</td>

<td style="text-align:right;">

35.529562

</td>

<td style="text-align:right;">

3.5259788

</td>

</tr>

<tr>

<td style="text-align:left;">

Mauritania

</td>

<td style="text-align:right;">

7607

</td>

<td style="text-align:right;">

163

</td>

<td style="text-align:right;">

7342

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

4525696

</td>

<td style="text-align:right;">

21.007890

</td>

<td style="text-align:right;">

\-10.940835

</td>

<td style="text-align:right;">

16.8084644

</td>

</tr>

<tr>

<td style="text-align:left;">

Mauritius

</td>

<td style="text-align:right;">

417

</td>

<td style="text-align:right;">

10

</td>

<td style="text-align:right;">

364

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

1265711

</td>

<td style="text-align:right;">

\-20.348404

</td>

<td style="text-align:right;">

57.552152

</td>

<td style="text-align:right;">

3.2945909

</td>

</tr>

<tr>

<td style="text-align:left;">

Malawi

</td>

<td style="text-align:right;">

5852

</td>

<td style="text-align:right;">

181

</td>

<td style="text-align:right;">

4740

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

18628747

</td>

<td style="text-align:right;">

\-13.254308

</td>

<td style="text-align:right;">

34.301525

</td>

<td style="text-align:right;">

3.1413814

</td>

</tr>

<tr>

<td style="text-align:left;">

Malaysia

</td>

<td style="text-align:right;">

19627

</td>

<td style="text-align:right;">

180

</td>

<td style="text-align:right;">

12561

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

31949777

</td>

<td style="text-align:right;">

4.210484

</td>

<td style="text-align:right;">

101.975766

</td>

<td style="text-align:right;">

6.1430789

</td>

</tr>

<tr>

<td style="text-align:left;">

Namibia

</td>

<td style="text-align:right;">

12263

</td>

<td style="text-align:right;">

131

</td>

<td style="text-align:right;">

10419

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

2494530

</td>

<td style="text-align:right;">

\-22.957640

</td>

<td style="text-align:right;">

18.490410

</td>

<td style="text-align:right;">

49.1595611

</td>

</tr>

<tr>

<td style="text-align:left;">

Niger

</td>

<td style="text-align:right;">

1209

</td>

<td style="text-align:right;">

69

</td>

<td style="text-align:right;">

1126

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

23310715

</td>

<td style="text-align:right;">

17.607789

</td>

<td style="text-align:right;">

8.081666

</td>

<td style="text-align:right;">

0.5186456

</td>

</tr>

<tr>

<td style="text-align:left;">

Nigeria

</td>

<td style="text-align:right;">

61307

</td>

<td style="text-align:right;">

1123

</td>

<td style="text-align:right;">

56557

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

200963599

</td>

<td style="text-align:right;">

9.081999

</td>

<td style="text-align:right;">

8.675277

</td>

<td style="text-align:right;">

3.0506520

</td>

</tr>

<tr>

<td style="text-align:left;">

Nicaragua

</td>

<td style="text-align:right;">

5353

</td>

<td style="text-align:right;">

154

</td>

<td style="text-align:right;">

4225

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

6545502

</td>

<td style="text-align:right;">

12.865416

</td>

<td style="text-align:right;">

\-85.207229

</td>

<td style="text-align:right;">

8.1781352

</td>

</tr>

<tr>

<td style="text-align:left;">

Netherlands

</td>

<td style="text-align:right;">

225970

</td>

<td style="text-align:right;">

6797

</td>

<td style="text-align:right;">

5184

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

17332850

</td>

<td style="text-align:right;">

52.132633

</td>

<td style="text-align:right;">

5.291266

</td>

<td style="text-align:right;">

130.3709430

</td>

</tr>

<tr>

<td style="text-align:left;">

Norway

</td>

<td style="text-align:right;">

16369

</td>

<td style="text-align:right;">

278

</td>

<td style="text-align:right;">

11863

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

5347896

</td>

<td style="text-align:right;">

60.472024

</td>

<td style="text-align:right;">

8.468946

</td>

<td style="text-align:right;">

30.6082990

</td>

</tr>

<tr>

<td style="text-align:left;">

Nepal

</td>

<td style="text-align:right;">

129304

</td>

<td style="text-align:right;">

727

</td>

<td style="text-align:right;">

89840

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

28608710

</td>

<td style="text-align:right;">

28.394857

</td>

<td style="text-align:right;">

84.124008

</td>

<td style="text-align:right;">

45.1974241

</td>

</tr>

<tr>

<td style="text-align:left;">

New Zealand

</td>

<td style="text-align:right;">

1886

</td>

<td style="text-align:right;">

25

</td>

<td style="text-align:right;">

1819

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

4917000

</td>

<td style="text-align:right;">

\-40.900557

</td>

<td style="text-align:right;">

174.885971

</td>

<td style="text-align:right;">

3.8356722

</td>

</tr>

<tr>

<td style="text-align:left;">

Oman

</td>

<td style="text-align:right;">

108296

</td>

<td style="text-align:right;">

1071

</td>

<td style="text-align:right;">

94229

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

4974986

</td>

<td style="text-align:right;">

21.512583

</td>

<td style="text-align:right;">

55.923255

</td>

<td style="text-align:right;">

217.6810146

</td>

</tr>

<tr>

<td style="text-align:left;">

Pakistan

</td>

<td style="text-align:right;">

323019

</td>

<td style="text-align:right;">

6654

</td>

<td style="text-align:right;">

307069

</td>

<td style="text-align:left;">

South Asia

</td>

<td style="text-align:right;">

216565318

</td>

<td style="text-align:right;">

30.375321

</td>

<td style="text-align:right;">

69.345116

</td>

<td style="text-align:right;">

14.9155462

</td>

</tr>

<tr>

<td style="text-align:left;">

Panama

</td>

<td style="text-align:right;">

124107

</td>

<td style="text-align:right;">

2557

</td>

<td style="text-align:right;">

100348

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

4246439

</td>

<td style="text-align:right;">

8.537981

</td>

<td style="text-align:right;">

\-80.782127

</td>

<td style="text-align:right;">

292.2613512

</td>

</tr>

<tr>

<td style="text-align:left;">

Peru

</td>

<td style="text-align:right;">

862417

</td>

<td style="text-align:right;">

33648

</td>

<td style="text-align:right;">

774356

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

32510453

</td>

<td style="text-align:right;">

\-9.189967

</td>

<td style="text-align:right;">

\-75.015152

</td>

<td style="text-align:right;">

265.2737567

</td>

</tr>

<tr>

<td style="text-align:left;">

Philippines

</td>

<td style="text-align:right;">

354338

</td>

<td style="text-align:right;">

6603

</td>

<td style="text-align:right;">

295312

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

108116615

</td>

<td style="text-align:right;">

12.879721

</td>

<td style="text-align:right;">

121.774017

</td>

<td style="text-align:right;">

32.7736861

</td>

</tr>

<tr>

<td style="text-align:left;">

Papua New Guinea

</td>

<td style="text-align:right;">

581

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

540

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

8776109

</td>

<td style="text-align:right;">

\-6.314993

</td>

<td style="text-align:right;">

143.955550

</td>

<td style="text-align:right;">

0.6620246

</td>

</tr>

<tr>

<td style="text-align:left;">

Poland

</td>

<td style="text-align:right;">

167230

</td>

<td style="text-align:right;">

3524

</td>

<td style="text-align:right;">

90162

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

37970874

</td>

<td style="text-align:right;">

51.919438

</td>

<td style="text-align:right;">

19.145136

</td>

<td style="text-align:right;">

44.0416515

</td>

</tr>

<tr>

<td style="text-align:left;">

Portugal

</td>

<td style="text-align:right;">

98055

</td>

<td style="text-align:right;">

2162

</td>

<td style="text-align:right;">

57919

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

10269417

</td>

<td style="text-align:right;">

39.399872

</td>

<td style="text-align:right;">

\-8.224454

</td>

<td style="text-align:right;">

95.4825381

</td>

</tr>

<tr>

<td style="text-align:left;">

Paraguay

</td>

<td style="text-align:right;">

54015

</td>

<td style="text-align:right;">

1179

</td>

<td style="text-align:right;">

35524

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

7044636

</td>

<td style="text-align:right;">

\-23.442503

</td>

<td style="text-align:right;">

\-58.443832

</td>

<td style="text-align:right;">

76.6753598

</td>

</tr>

<tr>

<td style="text-align:left;">

Palestinian Territories

</td>

<td style="text-align:right;">

46746

</td>

<td style="text-align:right;">

402

</td>

<td style="text-align:right;">

40162

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

4685306

</td>

<td style="text-align:right;">

31.952162

</td>

<td style="text-align:right;">

35.233154

</td>

<td style="text-align:right;">

99.7714984

</td>

</tr>

<tr>

<td style="text-align:left;">

Qatar

</td>

<td style="text-align:right;">

129227

</td>

<td style="text-align:right;">

223

</td>

<td style="text-align:right;">

126218

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

2832067

</td>

<td style="text-align:right;">

25.354826

</td>

<td style="text-align:right;">

51.183884

</td>

<td style="text-align:right;">

456.2992330

</td>

</tr>

<tr>

<td style="text-align:left;">

Romania

</td>

<td style="text-align:right;">

176468

</td>

<td style="text-align:right;">

5812

</td>

<td style="text-align:right;">

129556

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

19356544

</td>

<td style="text-align:right;">

45.943161

</td>

<td style="text-align:right;">

24.966760

</td>

<td style="text-align:right;">

91.1671009

</td>

</tr>

<tr>

<td style="text-align:left;">

Russia

</td>

<td style="text-align:right;">

1376020

</td>

<td style="text-align:right;">

23857

</td>

<td style="text-align:right;">

1060279

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

144373535

</td>

<td style="text-align:right;">

61.524010

</td>

<td style="text-align:right;">

105.318756

</td>

<td style="text-align:right;">

95.3097117

</td>

</tr>

<tr>

<td style="text-align:left;">

Rwanda

</td>

<td style="text-align:right;">

4971

</td>

<td style="text-align:right;">

34

</td>

<td style="text-align:right;">

4768

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

12626950

</td>

<td style="text-align:right;">

\-1.940278

</td>

<td style="text-align:right;">

29.873888

</td>

<td style="text-align:right;">

3.9368177

</td>

</tr>

<tr>

<td style="text-align:left;">

Saudi Arabia

</td>

<td style="text-align:right;">

341854

</td>

<td style="text-align:right;">

5165

</td>

<td style="text-align:right;">

328165

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

34268528

</td>

<td style="text-align:right;">

23.885942

</td>

<td style="text-align:right;">

45.079162

</td>

<td style="text-align:right;">

99.7574217

</td>

</tr>

<tr>

<td style="text-align:left;">

Sudan

</td>

<td style="text-align:right;">

13691

</td>

<td style="text-align:right;">

836

</td>

<td style="text-align:right;">

6764

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

42813238

</td>

<td style="text-align:right;">

12.862807

</td>

<td style="text-align:right;">

30.217636

</td>

<td style="text-align:right;">

3.1978427

</td>

</tr>

<tr>

<td style="text-align:left;">

Senegal

</td>

<td style="text-align:right;">

15392

</td>

<td style="text-align:right;">

317

</td>

<td style="text-align:right;">

13756

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

16296364

</td>

<td style="text-align:right;">

14.497401

</td>

<td style="text-align:right;">

\-14.452362

</td>

<td style="text-align:right;">

9.4450517

</td>

</tr>

<tr>

<td style="text-align:left;">

Singapore

</td>

<td style="text-align:right;">

57904

</td>

<td style="text-align:right;">

28

</td>

<td style="text-align:right;">

57798

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

5703569

</td>

<td style="text-align:right;">

1.352083

</td>

<td style="text-align:right;">

103.819836

</td>

<td style="text-align:right;">

101.5223976

</td>

</tr>

<tr>

<td style="text-align:left;">

Solomon Islands

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

669823

</td>

<td style="text-align:right;">

\-9.645710

</td>

<td style="text-align:right;">

160.156194

</td>

<td style="text-align:right;">

0.0447880

</td>

</tr>

<tr>

<td style="text-align:left;">

Sierra Leone

</td>

<td style="text-align:right;">

2327

</td>

<td style="text-align:right;">

73

</td>

<td style="text-align:right;">

1753

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

7813215

</td>

<td style="text-align:right;">

8.460555

</td>

<td style="text-align:right;">

\-11.779889

</td>

<td style="text-align:right;">

2.9782874

</td>

</tr>

<tr>

<td style="text-align:left;">

El Salvador

</td>

<td style="text-align:right;">

31456

</td>

<td style="text-align:right;">

917

</td>

<td style="text-align:right;">

26769

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

6453553

</td>

<td style="text-align:right;">

13.794185

</td>

<td style="text-align:right;">

\-88.896530

</td>

<td style="text-align:right;">

48.7421425

</td>

</tr>

<tr>

<td style="text-align:left;">

San Marino

</td>

<td style="text-align:right;">

759

</td>

<td style="text-align:right;">

42

</td>

<td style="text-align:right;">

685

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

33860

</td>

<td style="text-align:right;">

43.942360

</td>

<td style="text-align:right;">

12.457777

</td>

<td style="text-align:right;">

224.1582989

</td>

</tr>

<tr>

<td style="text-align:left;">

Somalia

</td>

<td style="text-align:right;">

3864

</td>

<td style="text-align:right;">

99

</td>

<td style="text-align:right;">

3089

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

15442905

</td>

<td style="text-align:right;">

5.152149

</td>

<td style="text-align:right;">

46.199616

</td>

<td style="text-align:right;">

2.5021199

</td>

</tr>

<tr>

<td style="text-align:left;">

Serbia

</td>

<td style="text-align:right;">

35946

</td>

<td style="text-align:right;">

774

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

6944975

</td>

<td style="text-align:right;">

44.016521

</td>

<td style="text-align:right;">

21.005859

</td>

<td style="text-align:right;">

51.7582857

</td>

</tr>

<tr>

<td style="text-align:left;">

South Sudan

</td>

<td style="text-align:right;">

2817

</td>

<td style="text-align:right;">

55

</td>

<td style="text-align:right;">

1290

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

11062113

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

2.5465298

</td>

</tr>

<tr>

<td style="text-align:left;">

São Tomé & Príncipe

</td>

<td style="text-align:right;">

932

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

896

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

215056

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

43.3375493

</td>

</tr>

<tr>

<td style="text-align:left;">

Suriname

</td>

<td style="text-align:right;">

5123

</td>

<td style="text-align:right;">

109

</td>

<td style="text-align:right;">

4936

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

581372

</td>

<td style="text-align:right;">

3.919305

</td>

<td style="text-align:right;">

\-56.027783

</td>

<td style="text-align:right;">

88.1191389

</td>

</tr>

<tr>

<td style="text-align:left;">

Slovakia

</td>

<td style="text-align:right;">

28268

</td>

<td style="text-align:right;">

82

</td>

<td style="text-align:right;">

7297

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

5454073

</td>

<td style="text-align:right;">

48.669026

</td>

<td style="text-align:right;">

19.699024

</td>

<td style="text-align:right;">

51.8291559

</td>

</tr>

<tr>

<td style="text-align:left;">

Slovenia

</td>

<td style="text-align:right;">

12416

</td>

<td style="text-align:right;">

184

</td>

<td style="text-align:right;">

6148

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

2087946

</td>

<td style="text-align:right;">

46.151241

</td>

<td style="text-align:right;">

14.995463

</td>

<td style="text-align:right;">

59.4651394

</td>

</tr>

<tr>

<td style="text-align:left;">

Sweden

</td>

<td style="text-align:right;">

103200

</td>

<td style="text-align:right;">

5918

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

10285453

</td>

<td style="text-align:right;">

60.128161

</td>

<td style="text-align:right;">

18.643501

</td>

<td style="text-align:right;">

100.3358821

</td>

</tr>

<tr>

<td style="text-align:left;">

Eswatini

</td>

<td style="text-align:right;">

5765

</td>

<td style="text-align:right;">

115

</td>

<td style="text-align:right;">

5392

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

1148130

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

50.2120840

</td>

</tr>

<tr>

<td style="text-align:left;">

Seychelles

</td>

<td style="text-align:right;">

149

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

148

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

97625

</td>

<td style="text-align:right;">

\-4.679574

</td>

<td style="text-align:right;">

55.491977

</td>

<td style="text-align:right;">

15.2624840

</td>

</tr>

<tr>

<td style="text-align:left;">

Syria

</td>

<td style="text-align:right;">

5033

</td>

<td style="text-align:right;">

245

</td>

<td style="text-align:right;">

1494

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

17070135

</td>

<td style="text-align:right;">

34.802075

</td>

<td style="text-align:right;">

38.996815

</td>

<td style="text-align:right;">

2.9484243

</td>

</tr>

<tr>

<td style="text-align:left;">

Chad

</td>

<td style="text-align:right;">

1365

</td>

<td style="text-align:right;">

93

</td>

<td style="text-align:right;">

1179

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

15946876

</td>

<td style="text-align:right;">

15.454166

</td>

<td style="text-align:right;">

18.732207

</td>

<td style="text-align:right;">

0.8559670

</td>

</tr>

<tr>

<td style="text-align:left;">

Togo

</td>

<td style="text-align:right;">

2049

</td>

<td style="text-align:right;">

51

</td>

<td style="text-align:right;">

1517

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

8082366

</td>

<td style="text-align:right;">

8.619543

</td>

<td style="text-align:right;">

0.824782

</td>

<td style="text-align:right;">

2.5351487

</td>

</tr>

<tr>

<td style="text-align:left;">

Thailand

</td>

<td style="text-align:right;">

3686

</td>

<td style="text-align:right;">

59

</td>

<td style="text-align:right;">

3481

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

69625582

</td>

<td style="text-align:right;">

15.870032

</td>

<td style="text-align:right;">

100.992541

</td>

<td style="text-align:right;">

0.5294031

</td>

</tr>

<tr>

<td style="text-align:left;">

Tajikistan

</td>

<td style="text-align:right;">

10455

</td>

<td style="text-align:right;">

80

</td>

<td style="text-align:right;">

9457

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

9321018

</td>

<td style="text-align:right;">

38.861034

</td>

<td style="text-align:right;">

71.276093

</td>

<td style="text-align:right;">

11.2165860

</td>

</tr>

<tr>

<td style="text-align:left;">

Timor-Leste

</td>

<td style="text-align:right;">

29

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

28

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

1293119

</td>

<td style="text-align:right;">

\-8.874217

</td>

<td style="text-align:right;">

125.727539

</td>

<td style="text-align:right;">

0.2242640

</td>

</tr>

<tr>

<td style="text-align:left;">

Trinidad & Tobago

</td>

<td style="text-align:right;">

5281

</td>

<td style="text-align:right;">

95

</td>

<td style="text-align:right;">

3584

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

1394973

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

37.8573635

</td>

</tr>

<tr>

<td style="text-align:left;">

Tunisia

</td>

<td style="text-align:right;">

40542

</td>

<td style="text-align:right;">

626

</td>

<td style="text-align:right;">

5032

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

11694719

</td>

<td style="text-align:right;">

33.886917

</td>

<td style="text-align:right;">

9.537499

</td>

<td style="text-align:right;">

34.6669296

</td>

</tr>

<tr>

<td style="text-align:left;">

Turkey

</td>

<td style="text-align:right;">

345678

</td>

<td style="text-align:right;">

9224

</td>

<td style="text-align:right;">

302499

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

83429615

</td>

<td style="text-align:right;">

38.963745

</td>

<td style="text-align:right;">

35.243322

</td>

<td style="text-align:right;">

41.4334886

</td>

</tr>

<tr>

<td style="text-align:left;">

Tanzania

</td>

<td style="text-align:right;">

509

</td>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

183

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

58005463

</td>

<td style="text-align:right;">

\-6.369028

</td>

<td style="text-align:right;">

34.888822

</td>

<td style="text-align:right;">

0.0877504

</td>

</tr>

<tr>

<td style="text-align:left;">

Uganda

</td>

<td style="text-align:right;">

10455

</td>

<td style="text-align:right;">

96

</td>

<td style="text-align:right;">

6901

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

44269594

</td>

<td style="text-align:right;">

1.373333

</td>

<td style="text-align:right;">

32.290275

</td>

<td style="text-align:right;">

2.3616661

</td>

</tr>

<tr>

<td style="text-align:left;">

Ukraine

</td>

<td style="text-align:right;">

301856

</td>

<td style="text-align:right;">

5669

</td>

<td style="text-align:right;">

129033

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

44385155

</td>

<td style="text-align:right;">

48.379433

</td>

<td style="text-align:right;">

31.165580

</td>

<td style="text-align:right;">

68.0083240

</td>

</tr>

<tr>

<td style="text-align:left;">

Uruguay

</td>

<td style="text-align:right;">

2501

</td>

<td style="text-align:right;">

51

</td>

<td style="text-align:right;">

2052

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

3461734

</td>

<td style="text-align:right;">

\-32.522779

</td>

<td style="text-align:right;">

\-55.765835

</td>

<td style="text-align:right;">

7.2247030

</td>

</tr>

<tr>

<td style="text-align:left;">

United States

</td>

<td style="text-align:right;">

8106384

</td>

<td style="text-align:right;">

219286

</td>

<td style="text-align:right;">

3220573

</td>

<td style="text-align:left;">

North America

</td>

<td style="text-align:right;">

328239523

</td>

<td style="text-align:right;">

37.090240

</td>

<td style="text-align:right;">

\-95.712891

</td>

<td style="text-align:right;">

246.9655063

</td>

</tr>

<tr>

<td style="text-align:left;">

Uzbekistan

</td>

<td style="text-align:right;">

62809

</td>

<td style="text-align:right;">

522

</td>

<td style="text-align:right;">

59756

</td>

<td style="text-align:left;">

Europe & Central Asia

</td>

<td style="text-align:right;">

33580650

</td>

<td style="text-align:right;">

41.377491

</td>

<td style="text-align:right;">

64.585262

</td>

<td style="text-align:right;">

18.7039262

</td>

</tr>

<tr>

<td style="text-align:left;">

St. Vincent & Grenadines

</td>

<td style="text-align:right;">

67

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:right;">

64

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

110589

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

6.0584687

</td>

</tr>

<tr>

<td style="text-align:left;">

Venezuela

</td>

<td style="text-align:right;">

86289

</td>

<td style="text-align:right;">

731

</td>

<td style="text-align:right;">

78847

</td>

<td style="text-align:left;">

Latin America & Caribbean

</td>

<td style="text-align:right;">

28515829

</td>

<td style="text-align:right;">

6.423750

</td>

<td style="text-align:right;">

\-66.589730

</td>

<td style="text-align:right;">

30.2600356

</td>

</tr>

<tr>

<td style="text-align:left;">

Vietnam

</td>

<td style="text-align:right;">

1126

</td>

<td style="text-align:right;">

35

</td>

<td style="text-align:right;">

1031

</td>

<td style="text-align:left;">

East Asia & Pacific

</td>

<td style="text-align:right;">

96462106

</td>

<td style="text-align:right;">

14.058324

</td>

<td style="text-align:right;">

108.277199

</td>

<td style="text-align:right;">

0.1167298

</td>

</tr>

<tr>

<td style="text-align:left;">

Yemen

</td>

<td style="text-align:right;">

2055

</td>

<td style="text-align:right;">

596

</td>

<td style="text-align:right;">

1336

</td>

<td style="text-align:left;">

Middle East & North Africa

</td>

<td style="text-align:right;">

29161922

</td>

<td style="text-align:right;">

15.552727

</td>

<td style="text-align:right;">

48.516388

</td>

<td style="text-align:right;">

0.7046861

</td>

</tr>

<tr>

<td style="text-align:left;">

South Africa

</td>

<td style="text-align:right;">

702131

</td>

<td style="text-align:right;">

18408

</td>

<td style="text-align:right;">

630436

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

58558270

</td>

<td style="text-align:right;">

\-30.559482

</td>

<td style="text-align:right;">

22.937506

</td>

<td style="text-align:right;">

119.9029616

</td>

</tr>

<tr>

<td style="text-align:left;">

Zambia

</td>

<td style="text-align:right;">

15789

</td>

<td style="text-align:right;">

346

</td>

<td style="text-align:right;">

14927

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

17861030

</td>

<td style="text-align:right;">

\-13.133897

</td>

<td style="text-align:right;">

27.849332

</td>

<td style="text-align:right;">

8.8399157

</td>

</tr>

<tr>

<td style="text-align:left;">

Zimbabwe

</td>

<td style="text-align:right;">

8110

</td>

<td style="text-align:right;">

231

</td>

<td style="text-align:right;">

7673

</td>

<td style="text-align:left;">

Sub-Saharan Africa

</td>

<td style="text-align:right;">

14645468

</td>

<td style="text-align:right;">

\-19.015438

</td>

<td style="text-align:right;">

29.154857

</td>

<td style="text-align:right;">

5.5375492

</td>

</tr>

</tbody>

</table>

Here is a sample line graph shown in the shiny app which is generated by
using `dailyplot` function (this function cannot be produced outside the
shinyapp as it is using the input from selectInput
(e.g. input$country)):

``` r
dailyall <- covid19wrangled %>%
    group_by(date) %>%
    summarise(totalconfirmed = sum(confirmed),
              totaldeaths = sum(deaths),
              totalrecovered = sum(recovered)) %>%
    mutate(confirmed_lag = lag(totalconfirmed),
           daily_confirmed = totalconfirmed - confirmed_lag,
           death_lag = lag(totaldeaths),
           daily_death = totaldeaths - death_lag,
           recovered_lag = lag(totalrecovered),
           daily_recovered = totalrecovered - recovered_lag)
#> `summarise()` ungrouping output (override with `.groups` argument)
  
  plot_all <- dailyall %>%
    ggplot(aes_string(x = "date",
               y= "daily_confirmed")) +
    geom_col(fill = "#F09366") +
    geom_line(size = 0, alpha = 0) +
    geom_smooth(color = "red", size = 1) +
    labs(x = "Date",
         y = "Daily number of confirmed cases",
         title = "Figure: Trend of Daily Number of confirmed cases") +
    theme(panel.background = element_rect(fill = "grey16"),
          plot.background = element_rect(fill = "grey16"),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          plot.title = element_text(size = 12), 
          plot.title.position = "plot",
          text = element_text(color = "white"),
          axis.text = element_text(color = "white"),
          axis.line.x = element_line(color = "white",
                                     size = 0.6),
          axis.line.y = element_line(color = "white",
                                     size = 0.6))
  
  ggplotly(plot_all)  
#> `geom_smooth()` using method = 'loess' and formula 'y ~ x'
#> Warning: Removed 1 rows containing non-finite values (stat_smooth).
#> Warning: Removed 1 rows containing missing values (position_stack).
#> PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

<!--html_preserve-->

<div id="htmlwidget-08896298642008c789cd" class="plotly html-widget" style="width:100%;height:480px;">

</div>

<script type="application/json" data-for="htmlwidget-08896298642008c789cd">{"x":{"data":[{"orientation":"v","width":[0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455,0.900000000001455],"base":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"x":[18284,18285,18286,18287,18288,18289,18290,18291,18292,18293,18294,18295,18296,18297,18298,18299,18300,18301,18302,18303,18304,18305,18306,18307,18308,18309,18310,18311,18312,18313,18314,18315,18316,18317,18318,18319,18320,18321,18322,18323,18324,18325,18326,18327,18328,18329,18330,18331,18332,18333,18334,18335,18336,18337,18338,18339,18340,18341,18342,18343,18344,18345,18346,18347,18348,18349,18350,18351,18352,18353,18354,18355,18356,18357,18358,18359,18360,18361,18362,18363,18364,18365,18366,18367,18368,18369,18370,18371,18372,18373,18374,18375,18376,18377,18378,18379,18380,18381,18382,18383,18384,18385,18386,18387,18388,18389,18390,18391,18392,18393,18394,18395,18396,18397,18398,18399,18400,18401,18402,18403,18404,18405,18406,18407,18408,18409,18410,18411,18412,18413,18414,18415,18416,18417,18418,18419,18420,18421,18422,18423,18424,18425,18426,18427,18428,18429,18430,18431,18432,18433,18434,18435,18436,18437,18438,18439,18440,18441,18442,18443,18444,18445,18446,18447,18448,18449,18450,18451,18452,18453,18454,18455,18456,18457,18458,18459,18460,18461,18462,18463,18464,18465,18466,18467,18468,18469,18470,18471,18472,18473,18474,18475,18476,18477,18478,18479,18480,18481,18482,18483,18484,18485,18486,18487,18488,18489,18490,18491,18492,18493,18494,18495,18496,18497,18498,18499,18500,18501,18502,18503,18504,18505,18506,18507,18508,18509,18510,18511,18512,18513,18514,18515,18516,18517,18518,18519,18520,18521,18522,18523,18524,18525,18526,18527,18528,18529,18530,18531,18532,18533,18534,18535,18536,18537,18538,18539,18540,18541,18542,18543,18544,18545,18546,18547,18548,18549,18550,18551,18552],"y":[99,285,493,683,808,2648,589,2067,1691,2111,4749,3100,4010,3745,3155,3532,2733,3026,2538,2042,378,15153,6484,2075,2112,1934,1794,420,546,627,1761,321,562,852,962,1360,1383,1888,2382,1977,2582,2317,2762,3998,4062,3960,3963,5009,7680,5788,14380,11073,11284,14728,15917,19498,27147,30607,31949,34210,43339,41421,50962,62702,64952,67370,59379,65230,76796,76506,81310,83246,80341,71959,73218,77718,84008,86439,87535,76189,95315,70061,71331,81861,96884,87787,73360,79920,74449,75839,78012,88216,84147,83646,72162,69673,75474,77479,83394,87210,80210,76545,77070,80528,89955,89070,91279,84933,75207,76903,84284,84823,96758,96410,94212,77401,88724,97230,102810,106591,106090,104666,94556,86389,93312,103051,119581,121037,137005,106650,95580,121414,118161,127264,130896,134881,111934,102491,124729,134567,138153,128570,135398,132704,119766,141771,142416,140318,179816,157244,128270,137836,165322,170924,178264,191361,178514,161796,156142,174135,217165,208022,202648,193797,182812,165497,210779,212214,227897,232110,216195,192420,192089,221132,231103,252536,242151,236740,214047,206525,233460,280588,282914,280369,255461,212951,226013,252201,289494,280122,290097,250426,228197,201273,258439,272072,284680,280889,259244,223440,227162,254919,277867,286003,304323,247718,211913,209921,256228,274427,267175,269693,265323,205517,226311,241851,288843,279103,281544,260874,226270,262414,264151,282700,280858,312719,263173,222033,233713,241310,284307,299225,319856,277275,236053,279692,283793,304848,313731,323415,281082,240735,299300,279185,267012,360956,330328,277432,240210,277037,283984,326976,317333,295425,319949,247821,325410,327884,349203,359436,360790,330804,268427,326133,328290,380536,406575,411229,341539],"text":["date: 2020-01-23<br />daily_confirmed:     99","date: 2020-01-24<br />daily_confirmed:    285","date: 2020-01-25<br />daily_confirmed:    493","date: 2020-01-26<br />daily_confirmed:    683","date: 2020-01-27<br />daily_confirmed:    808","date: 2020-01-28<br />daily_confirmed:   2648","date: 2020-01-29<br />daily_confirmed:    589","date: 2020-01-30<br />daily_confirmed:   2067","date: 2020-01-31<br />daily_confirmed:   1691","date: 2020-02-01<br />daily_confirmed:   2111","date: 2020-02-02<br />daily_confirmed:   4749","date: 2020-02-03<br />daily_confirmed:   3100","date: 2020-02-04<br />daily_confirmed:   4010","date: 2020-02-05<br />daily_confirmed:   3745","date: 2020-02-06<br />daily_confirmed:   3155","date: 2020-02-07<br />daily_confirmed:   3532","date: 2020-02-08<br />daily_confirmed:   2733","date: 2020-02-09<br />daily_confirmed:   3026","date: 2020-02-10<br />daily_confirmed:   2538","date: 2020-02-11<br />daily_confirmed:   2042","date: 2020-02-12<br />daily_confirmed:    378","date: 2020-02-13<br />daily_confirmed:  15153","date: 2020-02-14<br />daily_confirmed:   6484","date: 2020-02-15<br />daily_confirmed:   2075","date: 2020-02-16<br />daily_confirmed:   2112","date: 2020-02-17<br />daily_confirmed:   1934","date: 2020-02-18<br />daily_confirmed:   1794","date: 2020-02-19<br />daily_confirmed:    420","date: 2020-02-20<br />daily_confirmed:    546","date: 2020-02-21<br />daily_confirmed:    627","date: 2020-02-22<br />daily_confirmed:   1761","date: 2020-02-23<br />daily_confirmed:    321","date: 2020-02-24<br />daily_confirmed:    562","date: 2020-02-25<br />daily_confirmed:    852","date: 2020-02-26<br />daily_confirmed:    962","date: 2020-02-27<br />daily_confirmed:   1360","date: 2020-02-28<br />daily_confirmed:   1383","date: 2020-02-29<br />daily_confirmed:   1888","date: 2020-03-01<br />daily_confirmed:   2382","date: 2020-03-02<br />daily_confirmed:   1977","date: 2020-03-03<br />daily_confirmed:   2582","date: 2020-03-04<br />daily_confirmed:   2317","date: 2020-03-05<br />daily_confirmed:   2762","date: 2020-03-06<br />daily_confirmed:   3998","date: 2020-03-07<br />daily_confirmed:   4062","date: 2020-03-08<br />daily_confirmed:   3960","date: 2020-03-09<br />daily_confirmed:   3963","date: 2020-03-10<br />daily_confirmed:   5009","date: 2020-03-11<br />daily_confirmed:   7680","date: 2020-03-12<br />daily_confirmed:   5788","date: 2020-03-13<br />daily_confirmed:  14380","date: 2020-03-14<br />daily_confirmed:  11073","date: 2020-03-15<br />daily_confirmed:  11284","date: 2020-03-16<br />daily_confirmed:  14728","date: 2020-03-17<br />daily_confirmed:  15917","date: 2020-03-18<br />daily_confirmed:  19498","date: 2020-03-19<br />daily_confirmed:  27147","date: 2020-03-20<br />daily_confirmed:  30607","date: 2020-03-21<br />daily_confirmed:  31949","date: 2020-03-22<br />daily_confirmed:  34210","date: 2020-03-23<br />daily_confirmed:  43339","date: 2020-03-24<br />daily_confirmed:  41421","date: 2020-03-25<br />daily_confirmed:  50962","date: 2020-03-26<br />daily_confirmed:  62702","date: 2020-03-27<br />daily_confirmed:  64952","date: 2020-03-28<br />daily_confirmed:  67370","date: 2020-03-29<br />daily_confirmed:  59379","date: 2020-03-30<br />daily_confirmed:  65230","date: 2020-03-31<br />daily_confirmed:  76796","date: 2020-04-01<br />daily_confirmed:  76506","date: 2020-04-02<br />daily_confirmed:  81310","date: 2020-04-03<br />daily_confirmed:  83246","date: 2020-04-04<br />daily_confirmed:  80341","date: 2020-04-05<br />daily_confirmed:  71959","date: 2020-04-06<br />daily_confirmed:  73218","date: 2020-04-07<br />daily_confirmed:  77718","date: 2020-04-08<br />daily_confirmed:  84008","date: 2020-04-09<br />daily_confirmed:  86439","date: 2020-04-10<br />daily_confirmed:  87535","date: 2020-04-11<br />daily_confirmed:  76189","date: 2020-04-12<br />daily_confirmed:  95315","date: 2020-04-13<br />daily_confirmed:  70061","date: 2020-04-14<br />daily_confirmed:  71331","date: 2020-04-15<br />daily_confirmed:  81861","date: 2020-04-16<br />daily_confirmed:  96884","date: 2020-04-17<br />daily_confirmed:  87787","date: 2020-04-18<br />daily_confirmed:  73360","date: 2020-04-19<br />daily_confirmed:  79920","date: 2020-04-20<br />daily_confirmed:  74449","date: 2020-04-21<br />daily_confirmed:  75839","date: 2020-04-22<br />daily_confirmed:  78012","date: 2020-04-23<br />daily_confirmed:  88216","date: 2020-04-24<br />daily_confirmed:  84147","date: 2020-04-25<br />daily_confirmed:  83646","date: 2020-04-26<br />daily_confirmed:  72162","date: 2020-04-27<br />daily_confirmed:  69673","date: 2020-04-28<br />daily_confirmed:  75474","date: 2020-04-29<br />daily_confirmed:  77479","date: 2020-04-30<br />daily_confirmed:  83394","date: 2020-05-01<br />daily_confirmed:  87210","date: 2020-05-02<br />daily_confirmed:  80210","date: 2020-05-03<br />daily_confirmed:  76545","date: 2020-05-04<br />daily_confirmed:  77070","date: 2020-05-05<br />daily_confirmed:  80528","date: 2020-05-06<br />daily_confirmed:  89955","date: 2020-05-07<br />daily_confirmed:  89070","date: 2020-05-08<br />daily_confirmed:  91279","date: 2020-05-09<br />daily_confirmed:  84933","date: 2020-05-10<br />daily_confirmed:  75207","date: 2020-05-11<br />daily_confirmed:  76903","date: 2020-05-12<br />daily_confirmed:  84284","date: 2020-05-13<br />daily_confirmed:  84823","date: 2020-05-14<br />daily_confirmed:  96758","date: 2020-05-15<br />daily_confirmed:  96410","date: 2020-05-16<br />daily_confirmed:  94212","date: 2020-05-17<br />daily_confirmed:  77401","date: 2020-05-18<br />daily_confirmed:  88724","date: 2020-05-19<br />daily_confirmed:  97230","date: 2020-05-20<br />daily_confirmed: 102810","date: 2020-05-21<br />daily_confirmed: 106591","date: 2020-05-22<br />daily_confirmed: 106090","date: 2020-05-23<br />daily_confirmed: 104666","date: 2020-05-24<br />daily_confirmed:  94556","date: 2020-05-25<br />daily_confirmed:  86389","date: 2020-05-26<br />daily_confirmed:  93312","date: 2020-05-27<br />daily_confirmed: 103051","date: 2020-05-28<br />daily_confirmed: 119581","date: 2020-05-29<br />daily_confirmed: 121037","date: 2020-05-30<br />daily_confirmed: 137005","date: 2020-05-31<br />daily_confirmed: 106650","date: 2020-06-01<br />daily_confirmed:  95580","date: 2020-06-02<br />daily_confirmed: 121414","date: 2020-06-03<br />daily_confirmed: 118161","date: 2020-06-04<br />daily_confirmed: 127264","date: 2020-06-05<br />daily_confirmed: 130896","date: 2020-06-06<br />daily_confirmed: 134881","date: 2020-06-07<br />daily_confirmed: 111934","date: 2020-06-08<br />daily_confirmed: 102491","date: 2020-06-09<br />daily_confirmed: 124729","date: 2020-06-10<br />daily_confirmed: 134567","date: 2020-06-11<br />daily_confirmed: 138153","date: 2020-06-12<br />daily_confirmed: 128570","date: 2020-06-13<br />daily_confirmed: 135398","date: 2020-06-14<br />daily_confirmed: 132704","date: 2020-06-15<br />daily_confirmed: 119766","date: 2020-06-16<br />daily_confirmed: 141771","date: 2020-06-17<br />daily_confirmed: 142416","date: 2020-06-18<br />daily_confirmed: 140318","date: 2020-06-19<br />daily_confirmed: 179816","date: 2020-06-20<br />daily_confirmed: 157244","date: 2020-06-21<br />daily_confirmed: 128270","date: 2020-06-22<br />daily_confirmed: 137836","date: 2020-06-23<br />daily_confirmed: 165322","date: 2020-06-24<br />daily_confirmed: 170924","date: 2020-06-25<br />daily_confirmed: 178264","date: 2020-06-26<br />daily_confirmed: 191361","date: 2020-06-27<br />daily_confirmed: 178514","date: 2020-06-28<br />daily_confirmed: 161796","date: 2020-06-29<br />daily_confirmed: 156142","date: 2020-06-30<br />daily_confirmed: 174135","date: 2020-07-01<br />daily_confirmed: 217165","date: 2020-07-02<br />daily_confirmed: 208022","date: 2020-07-03<br />daily_confirmed: 202648","date: 2020-07-04<br />daily_confirmed: 193797","date: 2020-07-05<br />daily_confirmed: 182812","date: 2020-07-06<br />daily_confirmed: 165497","date: 2020-07-07<br />daily_confirmed: 210779","date: 2020-07-08<br />daily_confirmed: 212214","date: 2020-07-09<br />daily_confirmed: 227897","date: 2020-07-10<br />daily_confirmed: 232110","date: 2020-07-11<br />daily_confirmed: 216195","date: 2020-07-12<br />daily_confirmed: 192420","date: 2020-07-13<br />daily_confirmed: 192089","date: 2020-07-14<br />daily_confirmed: 221132","date: 2020-07-15<br />daily_confirmed: 231103","date: 2020-07-16<br />daily_confirmed: 252536","date: 2020-07-17<br />daily_confirmed: 242151","date: 2020-07-18<br />daily_confirmed: 236740","date: 2020-07-19<br />daily_confirmed: 214047","date: 2020-07-20<br />daily_confirmed: 206525","date: 2020-07-21<br />daily_confirmed: 233460","date: 2020-07-22<br />daily_confirmed: 280588","date: 2020-07-23<br />daily_confirmed: 282914","date: 2020-07-24<br />daily_confirmed: 280369","date: 2020-07-25<br />daily_confirmed: 255461","date: 2020-07-26<br />daily_confirmed: 212951","date: 2020-07-27<br />daily_confirmed: 226013","date: 2020-07-28<br />daily_confirmed: 252201","date: 2020-07-29<br />daily_confirmed: 289494","date: 2020-07-30<br />daily_confirmed: 280122","date: 2020-07-31<br />daily_confirmed: 290097","date: 2020-08-01<br />daily_confirmed: 250426","date: 2020-08-02<br />daily_confirmed: 228197","date: 2020-08-03<br />daily_confirmed: 201273","date: 2020-08-04<br />daily_confirmed: 258439","date: 2020-08-05<br />daily_confirmed: 272072","date: 2020-08-06<br />daily_confirmed: 284680","date: 2020-08-07<br />daily_confirmed: 280889","date: 2020-08-08<br />daily_confirmed: 259244","date: 2020-08-09<br />daily_confirmed: 223440","date: 2020-08-10<br />daily_confirmed: 227162","date: 2020-08-11<br />daily_confirmed: 254919","date: 2020-08-12<br />daily_confirmed: 277867","date: 2020-08-13<br />daily_confirmed: 286003","date: 2020-08-14<br />daily_confirmed: 304323","date: 2020-08-15<br />daily_confirmed: 247718","date: 2020-08-16<br />daily_confirmed: 211913","date: 2020-08-17<br />daily_confirmed: 209921","date: 2020-08-18<br />daily_confirmed: 256228","date: 2020-08-19<br />daily_confirmed: 274427","date: 2020-08-20<br />daily_confirmed: 267175","date: 2020-08-21<br />daily_confirmed: 269693","date: 2020-08-22<br />daily_confirmed: 265323","date: 2020-08-23<br />daily_confirmed: 205517","date: 2020-08-24<br />daily_confirmed: 226311","date: 2020-08-25<br />daily_confirmed: 241851","date: 2020-08-26<br />daily_confirmed: 288843","date: 2020-08-27<br />daily_confirmed: 279103","date: 2020-08-28<br />daily_confirmed: 281544","date: 2020-08-29<br />daily_confirmed: 260874","date: 2020-08-30<br />daily_confirmed: 226270","date: 2020-08-31<br />daily_confirmed: 262414","date: 2020-09-01<br />daily_confirmed: 264151","date: 2020-09-02<br />daily_confirmed: 282700","date: 2020-09-03<br />daily_confirmed: 280858","date: 2020-09-04<br />daily_confirmed: 312719","date: 2020-09-05<br />daily_confirmed: 263173","date: 2020-09-06<br />daily_confirmed: 222033","date: 2020-09-07<br />daily_confirmed: 233713","date: 2020-09-08<br />daily_confirmed: 241310","date: 2020-09-09<br />daily_confirmed: 284307","date: 2020-09-10<br />daily_confirmed: 299225","date: 2020-09-11<br />daily_confirmed: 319856","date: 2020-09-12<br />daily_confirmed: 277275","date: 2020-09-13<br />daily_confirmed: 236053","date: 2020-09-14<br />daily_confirmed: 279692","date: 2020-09-15<br />daily_confirmed: 283793","date: 2020-09-16<br />daily_confirmed: 304848","date: 2020-09-17<br />daily_confirmed: 313731","date: 2020-09-18<br />daily_confirmed: 323415","date: 2020-09-19<br />daily_confirmed: 281082","date: 2020-09-20<br />daily_confirmed: 240735","date: 2020-09-21<br />daily_confirmed: 299300","date: 2020-09-22<br />daily_confirmed: 279185","date: 2020-09-23<br />daily_confirmed: 267012","date: 2020-09-24<br />daily_confirmed: 360956","date: 2020-09-25<br />daily_confirmed: 330328","date: 2020-09-26<br />daily_confirmed: 277432","date: 2020-09-27<br />daily_confirmed: 240210","date: 2020-09-28<br />daily_confirmed: 277037","date: 2020-09-29<br />daily_confirmed: 283984","date: 2020-09-30<br />daily_confirmed: 326976","date: 2020-10-01<br />daily_confirmed: 317333","date: 2020-10-02<br />daily_confirmed: 295425","date: 2020-10-03<br />daily_confirmed: 319949","date: 2020-10-04<br />daily_confirmed: 247821","date: 2020-10-05<br />daily_confirmed: 325410","date: 2020-10-06<br />daily_confirmed: 327884","date: 2020-10-07<br />daily_confirmed: 349203","date: 2020-10-08<br />daily_confirmed: 359436","date: 2020-10-09<br />daily_confirmed: 360790","date: 2020-10-10<br />daily_confirmed: 330804","date: 2020-10-11<br />daily_confirmed: 268427","date: 2020-10-12<br />daily_confirmed: 326133","date: 2020-10-13<br />daily_confirmed: 328290","date: 2020-10-14<br />daily_confirmed: 380536","date: 2020-10-15<br />daily_confirmed: 406575","date: 2020-10-16<br />daily_confirmed: 411229","date: 2020-10-17<br />daily_confirmed: 341539"],"type":"bar","marker":{"autocolorscale":false,"color":"rgba(240,147,102,1)","line":{"width":1.88976377952756,"color":"transparent"}},"showlegend":false,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"x":[18283,18284,18285,18286,18287,18288,18289,18290,18291,18292,18293,18294,18295,18296,18297,18298,18299,18300,18301,18302,18303,18304,18305,18306,18307,18308,18309,18310,18311,18312,18313,18314,18315,18316,18317,18318,18319,18320,18321,18322,18323,18324,18325,18326,18327,18328,18329,18330,18331,18332,18333,18334,18335,18336,18337,18338,18339,18340,18341,18342,18343,18344,18345,18346,18347,18348,18349,18350,18351,18352,18353,18354,18355,18356,18357,18358,18359,18360,18361,18362,18363,18364,18365,18366,18367,18368,18369,18370,18371,18372,18373,18374,18375,18376,18377,18378,18379,18380,18381,18382,18383,18384,18385,18386,18387,18388,18389,18390,18391,18392,18393,18394,18395,18396,18397,18398,18399,18400,18401,18402,18403,18404,18405,18406,18407,18408,18409,18410,18411,18412,18413,18414,18415,18416,18417,18418,18419,18420,18421,18422,18423,18424,18425,18426,18427,18428,18429,18430,18431,18432,18433,18434,18435,18436,18437,18438,18439,18440,18441,18442,18443,18444,18445,18446,18447,18448,18449,18450,18451,18452,18453,18454,18455,18456,18457,18458,18459,18460,18461,18462,18463,18464,18465,18466,18467,18468,18469,18470,18471,18472,18473,18474,18475,18476,18477,18478,18479,18480,18481,18482,18483,18484,18485,18486,18487,18488,18489,18490,18491,18492,18493,18494,18495,18496,18497,18498,18499,18500,18501,18502,18503,18504,18505,18506,18507,18508,18509,18510,18511,18512,18513,18514,18515,18516,18517,18518,18519,18520,18521,18522,18523,18524,18525,18526,18527,18528,18529,18530,18531,18532,18533,18534,18535,18536,18537,18538,18539,18540,18541,18542,18543,18544,18545,18546,18547,18548,18549,18550,18551,18552],"y":[null,99,285,493,683,808,2648,589,2067,1691,2111,4749,3100,4010,3745,3155,3532,2733,3026,2538,2042,378,15153,6484,2075,2112,1934,1794,420,546,627,1761,321,562,852,962,1360,1383,1888,2382,1977,2582,2317,2762,3998,4062,3960,3963,5009,7680,5788,14380,11073,11284,14728,15917,19498,27147,30607,31949,34210,43339,41421,50962,62702,64952,67370,59379,65230,76796,76506,81310,83246,80341,71959,73218,77718,84008,86439,87535,76189,95315,70061,71331,81861,96884,87787,73360,79920,74449,75839,78012,88216,84147,83646,72162,69673,75474,77479,83394,87210,80210,76545,77070,80528,89955,89070,91279,84933,75207,76903,84284,84823,96758,96410,94212,77401,88724,97230,102810,106591,106090,104666,94556,86389,93312,103051,119581,121037,137005,106650,95580,121414,118161,127264,130896,134881,111934,102491,124729,134567,138153,128570,135398,132704,119766,141771,142416,140318,179816,157244,128270,137836,165322,170924,178264,191361,178514,161796,156142,174135,217165,208022,202648,193797,182812,165497,210779,212214,227897,232110,216195,192420,192089,221132,231103,252536,242151,236740,214047,206525,233460,280588,282914,280369,255461,212951,226013,252201,289494,280122,290097,250426,228197,201273,258439,272072,284680,280889,259244,223440,227162,254919,277867,286003,304323,247718,211913,209921,256228,274427,267175,269693,265323,205517,226311,241851,288843,279103,281544,260874,226270,262414,264151,282700,280858,312719,263173,222033,233713,241310,284307,299225,319856,277275,236053,279692,283793,304848,313731,323415,281082,240735,299300,279185,267012,360956,330328,277432,240210,277037,283984,326976,317333,295425,319949,247821,325410,327884,349203,359436,360790,330804,268427,326133,328290,380536,406575,411229,341539],"text":["date: 2020-01-22<br />daily_confirmed:     NA","date: 2020-01-23<br />daily_confirmed:     99","date: 2020-01-24<br />daily_confirmed:    285","date: 2020-01-25<br />daily_confirmed:    493","date: 2020-01-26<br />daily_confirmed:    683","date: 2020-01-27<br />daily_confirmed:    808","date: 2020-01-28<br />daily_confirmed:   2648","date: 2020-01-29<br />daily_confirmed:    589","date: 2020-01-30<br />daily_confirmed:   2067","date: 2020-01-31<br />daily_confirmed:   1691","date: 2020-02-01<br />daily_confirmed:   2111","date: 2020-02-02<br />daily_confirmed:   4749","date: 2020-02-03<br />daily_confirmed:   3100","date: 2020-02-04<br />daily_confirmed:   4010","date: 2020-02-05<br />daily_confirmed:   3745","date: 2020-02-06<br />daily_confirmed:   3155","date: 2020-02-07<br />daily_confirmed:   3532","date: 2020-02-08<br />daily_confirmed:   2733","date: 2020-02-09<br />daily_confirmed:   3026","date: 2020-02-10<br />daily_confirmed:   2538","date: 2020-02-11<br />daily_confirmed:   2042","date: 2020-02-12<br />daily_confirmed:    378","date: 2020-02-13<br />daily_confirmed:  15153","date: 2020-02-14<br />daily_confirmed:   6484","date: 2020-02-15<br />daily_confirmed:   2075","date: 2020-02-16<br />daily_confirmed:   2112","date: 2020-02-17<br />daily_confirmed:   1934","date: 2020-02-18<br />daily_confirmed:   1794","date: 2020-02-19<br />daily_confirmed:    420","date: 2020-02-20<br />daily_confirmed:    546","date: 2020-02-21<br />daily_confirmed:    627","date: 2020-02-22<br />daily_confirmed:   1761","date: 2020-02-23<br />daily_confirmed:    321","date: 2020-02-24<br />daily_confirmed:    562","date: 2020-02-25<br />daily_confirmed:    852","date: 2020-02-26<br />daily_confirmed:    962","date: 2020-02-27<br />daily_confirmed:   1360","date: 2020-02-28<br />daily_confirmed:   1383","date: 2020-02-29<br />daily_confirmed:   1888","date: 2020-03-01<br />daily_confirmed:   2382","date: 2020-03-02<br />daily_confirmed:   1977","date: 2020-03-03<br />daily_confirmed:   2582","date: 2020-03-04<br />daily_confirmed:   2317","date: 2020-03-05<br />daily_confirmed:   2762","date: 2020-03-06<br />daily_confirmed:   3998","date: 2020-03-07<br />daily_confirmed:   4062","date: 2020-03-08<br />daily_confirmed:   3960","date: 2020-03-09<br />daily_confirmed:   3963","date: 2020-03-10<br />daily_confirmed:   5009","date: 2020-03-11<br />daily_confirmed:   7680","date: 2020-03-12<br />daily_confirmed:   5788","date: 2020-03-13<br />daily_confirmed:  14380","date: 2020-03-14<br />daily_confirmed:  11073","date: 2020-03-15<br />daily_confirmed:  11284","date: 2020-03-16<br />daily_confirmed:  14728","date: 2020-03-17<br />daily_confirmed:  15917","date: 2020-03-18<br />daily_confirmed:  19498","date: 2020-03-19<br />daily_confirmed:  27147","date: 2020-03-20<br />daily_confirmed:  30607","date: 2020-03-21<br />daily_confirmed:  31949","date: 2020-03-22<br />daily_confirmed:  34210","date: 2020-03-23<br />daily_confirmed:  43339","date: 2020-03-24<br />daily_confirmed:  41421","date: 2020-03-25<br />daily_confirmed:  50962","date: 2020-03-26<br />daily_confirmed:  62702","date: 2020-03-27<br />daily_confirmed:  64952","date: 2020-03-28<br />daily_confirmed:  67370","date: 2020-03-29<br />daily_confirmed:  59379","date: 2020-03-30<br />daily_confirmed:  65230","date: 2020-03-31<br />daily_confirmed:  76796","date: 2020-04-01<br />daily_confirmed:  76506","date: 2020-04-02<br />daily_confirmed:  81310","date: 2020-04-03<br />daily_confirmed:  83246","date: 2020-04-04<br />daily_confirmed:  80341","date: 2020-04-05<br />daily_confirmed:  71959","date: 2020-04-06<br />daily_confirmed:  73218","date: 2020-04-07<br />daily_confirmed:  77718","date: 2020-04-08<br />daily_confirmed:  84008","date: 2020-04-09<br />daily_confirmed:  86439","date: 2020-04-10<br />daily_confirmed:  87535","date: 2020-04-11<br />daily_confirmed:  76189","date: 2020-04-12<br />daily_confirmed:  95315","date: 2020-04-13<br />daily_confirmed:  70061","date: 2020-04-14<br />daily_confirmed:  71331","date: 2020-04-15<br />daily_confirmed:  81861","date: 2020-04-16<br />daily_confirmed:  96884","date: 2020-04-17<br />daily_confirmed:  87787","date: 2020-04-18<br />daily_confirmed:  73360","date: 2020-04-19<br />daily_confirmed:  79920","date: 2020-04-20<br />daily_confirmed:  74449","date: 2020-04-21<br />daily_confirmed:  75839","date: 2020-04-22<br />daily_confirmed:  78012","date: 2020-04-23<br />daily_confirmed:  88216","date: 2020-04-24<br />daily_confirmed:  84147","date: 2020-04-25<br />daily_confirmed:  83646","date: 2020-04-26<br />daily_confirmed:  72162","date: 2020-04-27<br />daily_confirmed:  69673","date: 2020-04-28<br />daily_confirmed:  75474","date: 2020-04-29<br />daily_confirmed:  77479","date: 2020-04-30<br />daily_confirmed:  83394","date: 2020-05-01<br />daily_confirmed:  87210","date: 2020-05-02<br />daily_confirmed:  80210","date: 2020-05-03<br />daily_confirmed:  76545","date: 2020-05-04<br />daily_confirmed:  77070","date: 2020-05-05<br />daily_confirmed:  80528","date: 2020-05-06<br />daily_confirmed:  89955","date: 2020-05-07<br />daily_confirmed:  89070","date: 2020-05-08<br />daily_confirmed:  91279","date: 2020-05-09<br />daily_confirmed:  84933","date: 2020-05-10<br />daily_confirmed:  75207","date: 2020-05-11<br />daily_confirmed:  76903","date: 2020-05-12<br />daily_confirmed:  84284","date: 2020-05-13<br />daily_confirmed:  84823","date: 2020-05-14<br />daily_confirmed:  96758","date: 2020-05-15<br />daily_confirmed:  96410","date: 2020-05-16<br />daily_confirmed:  94212","date: 2020-05-17<br />daily_confirmed:  77401","date: 2020-05-18<br />daily_confirmed:  88724","date: 2020-05-19<br />daily_confirmed:  97230","date: 2020-05-20<br />daily_confirmed: 102810","date: 2020-05-21<br />daily_confirmed: 106591","date: 2020-05-22<br />daily_confirmed: 106090","date: 2020-05-23<br />daily_confirmed: 104666","date: 2020-05-24<br />daily_confirmed:  94556","date: 2020-05-25<br />daily_confirmed:  86389","date: 2020-05-26<br />daily_confirmed:  93312","date: 2020-05-27<br />daily_confirmed: 103051","date: 2020-05-28<br />daily_confirmed: 119581","date: 2020-05-29<br />daily_confirmed: 121037","date: 2020-05-30<br />daily_confirmed: 137005","date: 2020-05-31<br />daily_confirmed: 106650","date: 2020-06-01<br />daily_confirmed:  95580","date: 2020-06-02<br />daily_confirmed: 121414","date: 2020-06-03<br />daily_confirmed: 118161","date: 2020-06-04<br />daily_confirmed: 127264","date: 2020-06-05<br />daily_confirmed: 130896","date: 2020-06-06<br />daily_confirmed: 134881","date: 2020-06-07<br />daily_confirmed: 111934","date: 2020-06-08<br />daily_confirmed: 102491","date: 2020-06-09<br />daily_confirmed: 124729","date: 2020-06-10<br />daily_confirmed: 134567","date: 2020-06-11<br />daily_confirmed: 138153","date: 2020-06-12<br />daily_confirmed: 128570","date: 2020-06-13<br />daily_confirmed: 135398","date: 2020-06-14<br />daily_confirmed: 132704","date: 2020-06-15<br />daily_confirmed: 119766","date: 2020-06-16<br />daily_confirmed: 141771","date: 2020-06-17<br />daily_confirmed: 142416","date: 2020-06-18<br />daily_confirmed: 140318","date: 2020-06-19<br />daily_confirmed: 179816","date: 2020-06-20<br />daily_confirmed: 157244","date: 2020-06-21<br />daily_confirmed: 128270","date: 2020-06-22<br />daily_confirmed: 137836","date: 2020-06-23<br />daily_confirmed: 165322","date: 2020-06-24<br />daily_confirmed: 170924","date: 2020-06-25<br />daily_confirmed: 178264","date: 2020-06-26<br />daily_confirmed: 191361","date: 2020-06-27<br />daily_confirmed: 178514","date: 2020-06-28<br />daily_confirmed: 161796","date: 2020-06-29<br />daily_confirmed: 156142","date: 2020-06-30<br />daily_confirmed: 174135","date: 2020-07-01<br />daily_confirmed: 217165","date: 2020-07-02<br />daily_confirmed: 208022","date: 2020-07-03<br />daily_confirmed: 202648","date: 2020-07-04<br />daily_confirmed: 193797","date: 2020-07-05<br />daily_confirmed: 182812","date: 2020-07-06<br />daily_confirmed: 165497","date: 2020-07-07<br />daily_confirmed: 210779","date: 2020-07-08<br />daily_confirmed: 212214","date: 2020-07-09<br />daily_confirmed: 227897","date: 2020-07-10<br />daily_confirmed: 232110","date: 2020-07-11<br />daily_confirmed: 216195","date: 2020-07-12<br />daily_confirmed: 192420","date: 2020-07-13<br />daily_confirmed: 192089","date: 2020-07-14<br />daily_confirmed: 221132","date: 2020-07-15<br />daily_confirmed: 231103","date: 2020-07-16<br />daily_confirmed: 252536","date: 2020-07-17<br />daily_confirmed: 242151","date: 2020-07-18<br />daily_confirmed: 236740","date: 2020-07-19<br />daily_confirmed: 214047","date: 2020-07-20<br />daily_confirmed: 206525","date: 2020-07-21<br />daily_confirmed: 233460","date: 2020-07-22<br />daily_confirmed: 280588","date: 2020-07-23<br />daily_confirmed: 282914","date: 2020-07-24<br />daily_confirmed: 280369","date: 2020-07-25<br />daily_confirmed: 255461","date: 2020-07-26<br />daily_confirmed: 212951","date: 2020-07-27<br />daily_confirmed: 226013","date: 2020-07-28<br />daily_confirmed: 252201","date: 2020-07-29<br />daily_confirmed: 289494","date: 2020-07-30<br />daily_confirmed: 280122","date: 2020-07-31<br />daily_confirmed: 290097","date: 2020-08-01<br />daily_confirmed: 250426","date: 2020-08-02<br />daily_confirmed: 228197","date: 2020-08-03<br />daily_confirmed: 201273","date: 2020-08-04<br />daily_confirmed: 258439","date: 2020-08-05<br />daily_confirmed: 272072","date: 2020-08-06<br />daily_confirmed: 284680","date: 2020-08-07<br />daily_confirmed: 280889","date: 2020-08-08<br />daily_confirmed: 259244","date: 2020-08-09<br />daily_confirmed: 223440","date: 2020-08-10<br />daily_confirmed: 227162","date: 2020-08-11<br />daily_confirmed: 254919","date: 2020-08-12<br />daily_confirmed: 277867","date: 2020-08-13<br />daily_confirmed: 286003","date: 2020-08-14<br />daily_confirmed: 304323","date: 2020-08-15<br />daily_confirmed: 247718","date: 2020-08-16<br />daily_confirmed: 211913","date: 2020-08-17<br />daily_confirmed: 209921","date: 2020-08-18<br />daily_confirmed: 256228","date: 2020-08-19<br />daily_confirmed: 274427","date: 2020-08-20<br />daily_confirmed: 267175","date: 2020-08-21<br />daily_confirmed: 269693","date: 2020-08-22<br />daily_confirmed: 265323","date: 2020-08-23<br />daily_confirmed: 205517","date: 2020-08-24<br />daily_confirmed: 226311","date: 2020-08-25<br />daily_confirmed: 241851","date: 2020-08-26<br />daily_confirmed: 288843","date: 2020-08-27<br />daily_confirmed: 279103","date: 2020-08-28<br />daily_confirmed: 281544","date: 2020-08-29<br />daily_confirmed: 260874","date: 2020-08-30<br />daily_confirmed: 226270","date: 2020-08-31<br />daily_confirmed: 262414","date: 2020-09-01<br />daily_confirmed: 264151","date: 2020-09-02<br />daily_confirmed: 282700","date: 2020-09-03<br />daily_confirmed: 280858","date: 2020-09-04<br />daily_confirmed: 312719","date: 2020-09-05<br />daily_confirmed: 263173","date: 2020-09-06<br />daily_confirmed: 222033","date: 2020-09-07<br />daily_confirmed: 233713","date: 2020-09-08<br />daily_confirmed: 241310","date: 2020-09-09<br />daily_confirmed: 284307","date: 2020-09-10<br />daily_confirmed: 299225","date: 2020-09-11<br />daily_confirmed: 319856","date: 2020-09-12<br />daily_confirmed: 277275","date: 2020-09-13<br />daily_confirmed: 236053","date: 2020-09-14<br />daily_confirmed: 279692","date: 2020-09-15<br />daily_confirmed: 283793","date: 2020-09-16<br />daily_confirmed: 304848","date: 2020-09-17<br />daily_confirmed: 313731","date: 2020-09-18<br />daily_confirmed: 323415","date: 2020-09-19<br />daily_confirmed: 281082","date: 2020-09-20<br />daily_confirmed: 240735","date: 2020-09-21<br />daily_confirmed: 299300","date: 2020-09-22<br />daily_confirmed: 279185","date: 2020-09-23<br />daily_confirmed: 267012","date: 2020-09-24<br />daily_confirmed: 360956","date: 2020-09-25<br />daily_confirmed: 330328","date: 2020-09-26<br />daily_confirmed: 277432","date: 2020-09-27<br />daily_confirmed: 240210","date: 2020-09-28<br />daily_confirmed: 277037","date: 2020-09-29<br />daily_confirmed: 283984","date: 2020-09-30<br />daily_confirmed: 326976","date: 2020-10-01<br />daily_confirmed: 317333","date: 2020-10-02<br />daily_confirmed: 295425","date: 2020-10-03<br />daily_confirmed: 319949","date: 2020-10-04<br />daily_confirmed: 247821","date: 2020-10-05<br />daily_confirmed: 325410","date: 2020-10-06<br />daily_confirmed: 327884","date: 2020-10-07<br />daily_confirmed: 349203","date: 2020-10-08<br />daily_confirmed: 359436","date: 2020-10-09<br />daily_confirmed: 360790","date: 2020-10-10<br />daily_confirmed: 330804","date: 2020-10-11<br />daily_confirmed: 268427","date: 2020-10-12<br />daily_confirmed: 326133","date: 2020-10-13<br />daily_confirmed: 328290","date: 2020-10-14<br />daily_confirmed: 380536","date: 2020-10-15<br />daily_confirmed: 406575","date: 2020-10-16<br />daily_confirmed: 411229","date: 2020-10-17<br />daily_confirmed: 341539"],"type":"scatter","mode":"lines","line":{"width":0,"color":"rgba(0,0,0,0)","dash":"solid"},"hoveron":"points","showlegend":false,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"x":[18284,18287.3924050633,18290.7848101266,18294.1772151899,18297.5696202532,18300.9620253165,18304.3544303797,18307.746835443,18311.1392405063,18314.5316455696,18317.9240506329,18321.3164556962,18324.7088607595,18328.1012658228,18331.4936708861,18334.8860759494,18338.2784810127,18341.6708860759,18345.0632911392,18348.4556962025,18351.8481012658,18355.2405063291,18358.6329113924,18362.0253164557,18365.417721519,18368.8101265823,18372.2025316456,18375.5949367089,18378.9873417722,18382.3797468354,18385.7721518987,18389.164556962,18392.5569620253,18395.9493670886,18399.3417721519,18402.7341772152,18406.1265822785,18409.5189873418,18412.9113924051,18416.3037974684,18419.6962025316,18423.0886075949,18426.4810126582,18429.8734177215,18433.2658227848,18436.6582278481,18440.0506329114,18443.4430379747,18446.835443038,18450.2278481013,18453.6202531646,18457.0126582278,18460.4050632911,18463.7974683544,18467.1898734177,18470.582278481,18473.9746835443,18477.3670886076,18480.7594936709,18484.1518987342,18487.5443037975,18490.9367088608,18494.3291139241,18497.7215189873,18501.1139240506,18504.5063291139,18507.8987341772,18511.2911392405,18514.6835443038,18518.0759493671,18521.4683544304,18524.8607594937,18528.253164557,18531.6455696203,18535.0379746835,18538.4303797468,18541.8227848101,18545.2151898734,18548.6075949367,18552],"y":[-10801.3871629056,-8601.84358656155,-6323.96778352878,-3969.66009661867,-1540.82086864984,960.649557558721,3532.85083919613,6173.88263344351,8881.84459748459,11654.8363885001,14490.1332123866,17372.7643969743,20303.2125226388,23288.6429563768,26336.2210651753,29453.1122160212,32646.4817759116,35923.4951118334,39291.3175907769,42757.1145797285,46326.6185306489,49974.3957295263,53690.9744813839,57479.3923445266,61342.686877247,65283.8956378377,69306.0561846039,73412.206075838,77605.3828698324,81888.6241248927,86259.5879203555,90592.2701304961,94868.2940121053,99135.7051290375,103442.549045133,107836.871324234,112366.717530193,117080.133226852,122025.16397805,127249.855347644,132870.495540986,139258.128536589,146308.095762995,153837.889625651,161665.002529985,169606.926881422,177481.155085415,185105.179547388,192296.492672769,198872.586867008,204730.009037652,210282.145487476,215641.475736086,220835.456781462,225891.545621566,230837.19925436,235699.874677823,240507.028889917,245286.118888606,250064.601671867,254834.78579312,259523.859498269,264127.552330188,268645.206350548,273076.163621021,277419.766203276,281675.356158998,285842.275549855,289919.866437515,293907.470883663,297808.892703901,301634.992946183,305385.244096115,309058.487152302,312653.56311335,316169.312977863,319604.577744458,322958.198411738,326229.015978307,329415.87144278],"text":["date: 18284.00<br />daily_confirmed: -10801.3872","date: 18287.39<br />daily_confirmed:  -8601.8436","date: 18290.78<br />daily_confirmed:  -6323.9678","date: 18294.18<br />daily_confirmed:  -3969.6601","date: 18297.57<br />daily_confirmed:  -1540.8209","date: 18300.96<br />daily_confirmed:    960.6496","date: 18304.35<br />daily_confirmed:   3532.8508","date: 18307.75<br />daily_confirmed:   6173.8826","date: 18311.14<br />daily_confirmed:   8881.8446","date: 18314.53<br />daily_confirmed:  11654.8364","date: 18317.92<br />daily_confirmed:  14490.1332","date: 18321.32<br />daily_confirmed:  17372.7644","date: 18324.71<br />daily_confirmed:  20303.2125","date: 18328.10<br />daily_confirmed:  23288.6430","date: 18331.49<br />daily_confirmed:  26336.2211","date: 18334.89<br />daily_confirmed:  29453.1122","date: 18338.28<br />daily_confirmed:  32646.4818","date: 18341.67<br />daily_confirmed:  35923.4951","date: 18345.06<br />daily_confirmed:  39291.3176","date: 18348.46<br />daily_confirmed:  42757.1146","date: 18351.85<br />daily_confirmed:  46326.6185","date: 18355.24<br />daily_confirmed:  49974.3957","date: 18358.63<br />daily_confirmed:  53690.9745","date: 18362.03<br />daily_confirmed:  57479.3923","date: 18365.42<br />daily_confirmed:  61342.6869","date: 18368.81<br />daily_confirmed:  65283.8956","date: 18372.20<br />daily_confirmed:  69306.0562","date: 18375.59<br />daily_confirmed:  73412.2061","date: 18378.99<br />daily_confirmed:  77605.3829","date: 18382.38<br />daily_confirmed:  81888.6241","date: 18385.77<br />daily_confirmed:  86259.5879","date: 18389.16<br />daily_confirmed:  90592.2701","date: 18392.56<br />daily_confirmed:  94868.2940","date: 18395.95<br />daily_confirmed:  99135.7051","date: 18399.34<br />daily_confirmed: 103442.5490","date: 18402.73<br />daily_confirmed: 107836.8713","date: 18406.13<br />daily_confirmed: 112366.7175","date: 18409.52<br />daily_confirmed: 117080.1332","date: 18412.91<br />daily_confirmed: 122025.1640","date: 18416.30<br />daily_confirmed: 127249.8553","date: 18419.70<br />daily_confirmed: 132870.4955","date: 18423.09<br />daily_confirmed: 139258.1285","date: 18426.48<br />daily_confirmed: 146308.0958","date: 18429.87<br />daily_confirmed: 153837.8896","date: 18433.27<br />daily_confirmed: 161665.0025","date: 18436.66<br />daily_confirmed: 169606.9269","date: 18440.05<br />daily_confirmed: 177481.1551","date: 18443.44<br />daily_confirmed: 185105.1795","date: 18446.84<br />daily_confirmed: 192296.4927","date: 18450.23<br />daily_confirmed: 198872.5869","date: 18453.62<br />daily_confirmed: 204730.0090","date: 18457.01<br />daily_confirmed: 210282.1455","date: 18460.41<br />daily_confirmed: 215641.4757","date: 18463.80<br />daily_confirmed: 220835.4568","date: 18467.19<br />daily_confirmed: 225891.5456","date: 18470.58<br />daily_confirmed: 230837.1993","date: 18473.97<br />daily_confirmed: 235699.8747","date: 18477.37<br />daily_confirmed: 240507.0289","date: 18480.76<br />daily_confirmed: 245286.1189","date: 18484.15<br />daily_confirmed: 250064.6017","date: 18487.54<br />daily_confirmed: 254834.7858","date: 18490.94<br />daily_confirmed: 259523.8595","date: 18494.33<br />daily_confirmed: 264127.5523","date: 18497.72<br />daily_confirmed: 268645.2064","date: 18501.11<br />daily_confirmed: 273076.1636","date: 18504.51<br />daily_confirmed: 277419.7662","date: 18507.90<br />daily_confirmed: 281675.3562","date: 18511.29<br />daily_confirmed: 285842.2755","date: 18514.68<br />daily_confirmed: 289919.8664","date: 18518.08<br />daily_confirmed: 293907.4709","date: 18521.47<br />daily_confirmed: 297808.8927","date: 18524.86<br />daily_confirmed: 301634.9929","date: 18528.25<br />daily_confirmed: 305385.2441","date: 18531.65<br />daily_confirmed: 309058.4872","date: 18535.04<br />daily_confirmed: 312653.5631","date: 18538.43<br />daily_confirmed: 316169.3130","date: 18541.82<br />daily_confirmed: 319604.5777","date: 18545.22<br />daily_confirmed: 322958.1984","date: 18548.61<br />daily_confirmed: 326229.0160","date: 18552.00<br />daily_confirmed: 329415.8714"],"type":"scatter","mode":"lines","name":"fitted values","line":{"width":3.77952755905512,"color":"rgba(255,0,0,1)","dash":"solid"},"hoveron":"points","showlegend":false,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"x":[18284,18287.3924050633,18290.7848101266,18294.1772151899,18297.5696202532,18300.9620253165,18304.3544303797,18307.746835443,18311.1392405063,18314.5316455696,18317.9240506329,18321.3164556962,18324.7088607595,18328.1012658228,18331.4936708861,18334.8860759494,18338.2784810127,18341.6708860759,18345.0632911392,18348.4556962025,18351.8481012658,18355.2405063291,18358.6329113924,18362.0253164557,18365.417721519,18368.8101265823,18372.2025316456,18375.5949367089,18378.9873417722,18382.3797468354,18385.7721518987,18389.164556962,18392.5569620253,18395.9493670886,18399.3417721519,18402.7341772152,18406.1265822785,18409.5189873418,18412.9113924051,18416.3037974684,18419.6962025316,18423.0886075949,18426.4810126582,18429.8734177215,18433.2658227848,18436.6582278481,18440.0506329114,18443.4430379747,18446.835443038,18450.2278481013,18453.6202531646,18457.0126582278,18460.4050632911,18463.7974683544,18467.1898734177,18470.582278481,18473.9746835443,18477.3670886076,18480.7594936709,18484.1518987342,18487.5443037975,18490.9367088608,18494.3291139241,18497.7215189873,18501.1139240506,18504.5063291139,18507.8987341772,18511.2911392405,18514.6835443038,18518.0759493671,18521.4683544304,18524.8607594937,18528.253164557,18531.6455696203,18535.0379746835,18538.4303797468,18541.8227848101,18545.2151898734,18548.6075949367,18552,18552,18552,18548.6075949367,18545.2151898734,18541.8227848101,18538.4303797468,18535.0379746835,18531.6455696203,18528.253164557,18524.8607594937,18521.4683544304,18518.0759493671,18514.6835443038,18511.2911392405,18507.8987341772,18504.5063291139,18501.1139240506,18497.7215189873,18494.3291139241,18490.9367088608,18487.5443037975,18484.1518987342,18480.7594936709,18477.3670886076,18473.9746835443,18470.582278481,18467.1898734177,18463.7974683544,18460.4050632911,18457.0126582278,18453.6202531646,18450.2278481013,18446.835443038,18443.4430379747,18440.0506329114,18436.6582278481,18433.2658227848,18429.8734177215,18426.4810126582,18423.0886075949,18419.6962025316,18416.3037974684,18412.9113924051,18409.5189873418,18406.1265822785,18402.7341772152,18399.3417721519,18395.9493670886,18392.5569620253,18389.164556962,18385.7721518987,18382.3797468354,18378.9873417722,18375.5949367089,18372.2025316456,18368.8101265823,18365.417721519,18362.0253164557,18358.6329113924,18355.2405063291,18351.8481012658,18348.4556962025,18345.0632911392,18341.6708860759,18338.2784810127,18334.8860759494,18331.4936708861,18328.1012658228,18324.7088607595,18321.3164556962,18317.9240506329,18314.5316455696,18311.1392405063,18307.746835443,18304.3544303797,18300.9620253165,18297.5696202532,18294.1772151899,18290.7848101266,18287.3924050633,18284,18284],"y":[-21846.7195649251,-18754.4367181202,-15644.2836209363,-12521.9915014124,-9393.47783094777,-6264.65243247946,-3141.08063786567,-27.4757565366153,3072.95897941983,6159.23194900291,9232.30907898841,12284.2922569603,15324.2607433228,18368.5057989704,21433.4807202933,24535.3016480973,27689.3756417865,30910.1881766472,34211.2298869279,37605.0167482353,41102.6043151476,44698.8264589412,48383.1191954458,52145.3212952957,55976.2389412197,59871.0544512835,63831.4600088359,67866.2976390659,71990.7250080875,76224.2521533274,80583.5050092133,84967.7102777317,89335.7453100401,93696.6743706895,98064.730276233,102466.961520858,106948.735445852,111574.488716142,116423.309054119,121581.594241776,127202.141086827,133656.063119228,140803.645690375,148425.30582801,156307.610809855,164250.181867239,172070.303728456,179602.981194486,186696.411555624,193205.103592733,199057.323678146,204650.36346734,210074.852883414,215340.767004736,220462.038597976,225458.813933788,230358.575480277,235195.721798782,240009.509572384,244840.546674113,249682.687961627,254443.77179442,259114.245395002,263688.100216422,268158.353053097,272517.025858394,276755.219001592,280863.323770539,284831.394297501,288649.646750265,292313.288264404,295826.107328118,299183.885706135,302384.55567524,305428.261123311,308316.656015566,311052.246339664,313637.88257433,316076.422846748,318370.539040761,318370.539040761,340461.2038448,336381.609109866,332278.514249145,328156.909149252,324021.969940161,319878.865103388,315732.418629363,311586.602486095,307443.878564248,303304.497143398,299165.295017061,295008.338577529,290821.227329171,286595.493316404,282322.506548158,277993.974188945,273602.312484673,269140.859265374,264603.947202118,259986.883624614,255288.656669621,250562.728204828,245818.335981053,241041.173875368,236215.584574932,231321.052645156,226330.146558188,221208.098588759,215913.927507611,210402.694397157,204540.070141282,197896.573789914,190607.37790029,182892.006442374,174963.671895606,167022.394250115,159250.473423292,151812.545835615,144860.193953951,138538.849995144,132918.116453511,127627.018901982,122585.777737561,117784.699614533,113206.781127609,108820.367814034,104574.735887385,100400.84271417,96216.8299832605,91935.6708314977,87552.996096458,83220.0407315773,78958.1145126101,74780.6523603718,70696.736824392,66709.1348132744,62813.4633937575,58998.829767322,55249.9650001114,51550.6327461502,47909.2124112217,44371.4052946258,40936.8020470196,37603.5879100367,34370.9227839451,31238.9614100573,28208.7801137831,25282.1643019548,22461.2365369883,19747.9573457848,17150.4408279973,14690.7302155493,12375.2410234236,10206.7823162579,8185.95154759691,6311.83609364808,4582.67130817508,2996.3480538787,1550.74954499708,243.94523911392,-21846.7195649251],"text":["date: 18284.00<br />daily_confirmed: -10801.3872","date: 18287.39<br />daily_confirmed:  -8601.8436","date: 18290.78<br />daily_confirmed:  -6323.9678","date: 18294.18<br />daily_confirmed:  -3969.6601","date: 18297.57<br />daily_confirmed:  -1540.8209","date: 18300.96<br />daily_confirmed:    960.6496","date: 18304.35<br />daily_confirmed:   3532.8508","date: 18307.75<br />daily_confirmed:   6173.8826","date: 18311.14<br />daily_confirmed:   8881.8446","date: 18314.53<br />daily_confirmed:  11654.8364","date: 18317.92<br />daily_confirmed:  14490.1332","date: 18321.32<br />daily_confirmed:  17372.7644","date: 18324.71<br />daily_confirmed:  20303.2125","date: 18328.10<br />daily_confirmed:  23288.6430","date: 18331.49<br />daily_confirmed:  26336.2211","date: 18334.89<br />daily_confirmed:  29453.1122","date: 18338.28<br />daily_confirmed:  32646.4818","date: 18341.67<br />daily_confirmed:  35923.4951","date: 18345.06<br />daily_confirmed:  39291.3176","date: 18348.46<br />daily_confirmed:  42757.1146","date: 18351.85<br />daily_confirmed:  46326.6185","date: 18355.24<br />daily_confirmed:  49974.3957","date: 18358.63<br />daily_confirmed:  53690.9745","date: 18362.03<br />daily_confirmed:  57479.3923","date: 18365.42<br />daily_confirmed:  61342.6869","date: 18368.81<br />daily_confirmed:  65283.8956","date: 18372.20<br />daily_confirmed:  69306.0562","date: 18375.59<br />daily_confirmed:  73412.2061","date: 18378.99<br />daily_confirmed:  77605.3829","date: 18382.38<br />daily_confirmed:  81888.6241","date: 18385.77<br />daily_confirmed:  86259.5879","date: 18389.16<br />daily_confirmed:  90592.2701","date: 18392.56<br />daily_confirmed:  94868.2940","date: 18395.95<br />daily_confirmed:  99135.7051","date: 18399.34<br />daily_confirmed: 103442.5490","date: 18402.73<br />daily_confirmed: 107836.8713","date: 18406.13<br />daily_confirmed: 112366.7175","date: 18409.52<br />daily_confirmed: 117080.1332","date: 18412.91<br />daily_confirmed: 122025.1640","date: 18416.30<br />daily_confirmed: 127249.8553","date: 18419.70<br />daily_confirmed: 132870.4955","date: 18423.09<br />daily_confirmed: 139258.1285","date: 18426.48<br />daily_confirmed: 146308.0958","date: 18429.87<br />daily_confirmed: 153837.8896","date: 18433.27<br />daily_confirmed: 161665.0025","date: 18436.66<br />daily_confirmed: 169606.9269","date: 18440.05<br />daily_confirmed: 177481.1551","date: 18443.44<br />daily_confirmed: 185105.1795","date: 18446.84<br />daily_confirmed: 192296.4927","date: 18450.23<br />daily_confirmed: 198872.5869","date: 18453.62<br />daily_confirmed: 204730.0090","date: 18457.01<br />daily_confirmed: 210282.1455","date: 18460.41<br />daily_confirmed: 215641.4757","date: 18463.80<br />daily_confirmed: 220835.4568","date: 18467.19<br />daily_confirmed: 225891.5456","date: 18470.58<br />daily_confirmed: 230837.1993","date: 18473.97<br />daily_confirmed: 235699.8747","date: 18477.37<br />daily_confirmed: 240507.0289","date: 18480.76<br />daily_confirmed: 245286.1189","date: 18484.15<br />daily_confirmed: 250064.6017","date: 18487.54<br />daily_confirmed: 254834.7858","date: 18490.94<br />daily_confirmed: 259523.8595","date: 18494.33<br />daily_confirmed: 264127.5523","date: 18497.72<br />daily_confirmed: 268645.2064","date: 18501.11<br />daily_confirmed: 273076.1636","date: 18504.51<br />daily_confirmed: 277419.7662","date: 18507.90<br />daily_confirmed: 281675.3562","date: 18511.29<br />daily_confirmed: 285842.2755","date: 18514.68<br />daily_confirmed: 289919.8664","date: 18518.08<br />daily_confirmed: 293907.4709","date: 18521.47<br />daily_confirmed: 297808.8927","date: 18524.86<br />daily_confirmed: 301634.9929","date: 18528.25<br />daily_confirmed: 305385.2441","date: 18531.65<br />daily_confirmed: 309058.4872","date: 18535.04<br />daily_confirmed: 312653.5631","date: 18538.43<br />daily_confirmed: 316169.3130","date: 18541.82<br />daily_confirmed: 319604.5777","date: 18545.22<br />daily_confirmed: 322958.1984","date: 18548.61<br />daily_confirmed: 326229.0160","date: 18552.00<br />daily_confirmed: 329415.8714","date: 18552.00<br />daily_confirmed: 329415.8714","date: 18552.00<br />daily_confirmed: 329415.8714","date: 18548.61<br />daily_confirmed: 326229.0160","date: 18545.22<br />daily_confirmed: 322958.1984","date: 18541.82<br />daily_confirmed: 319604.5777","date: 18538.43<br />daily_confirmed: 316169.3130","date: 18535.04<br />daily_confirmed: 312653.5631","date: 18531.65<br />daily_confirmed: 309058.4872","date: 18528.25<br />daily_confirmed: 305385.2441","date: 18524.86<br />daily_confirmed: 301634.9929","date: 18521.47<br />daily_confirmed: 297808.8927","date: 18518.08<br />daily_confirmed: 293907.4709","date: 18514.68<br />daily_confirmed: 289919.8664","date: 18511.29<br />daily_confirmed: 285842.2755","date: 18507.90<br />daily_confirmed: 281675.3562","date: 18504.51<br />daily_confirmed: 277419.7662","date: 18501.11<br />daily_confirmed: 273076.1636","date: 18497.72<br />daily_confirmed: 268645.2064","date: 18494.33<br />daily_confirmed: 264127.5523","date: 18490.94<br />daily_confirmed: 259523.8595","date: 18487.54<br />daily_confirmed: 254834.7858","date: 18484.15<br />daily_confirmed: 250064.6017","date: 18480.76<br />daily_confirmed: 245286.1189","date: 18477.37<br />daily_confirmed: 240507.0289","date: 18473.97<br />daily_confirmed: 235699.8747","date: 18470.58<br />daily_confirmed: 230837.1993","date: 18467.19<br />daily_confirmed: 225891.5456","date: 18463.80<br />daily_confirmed: 220835.4568","date: 18460.41<br />daily_confirmed: 215641.4757","date: 18457.01<br />daily_confirmed: 210282.1455","date: 18453.62<br />daily_confirmed: 204730.0090","date: 18450.23<br />daily_confirmed: 198872.5869","date: 18446.84<br />daily_confirmed: 192296.4927","date: 18443.44<br />daily_confirmed: 185105.1795","date: 18440.05<br />daily_confirmed: 177481.1551","date: 18436.66<br />daily_confirmed: 169606.9269","date: 18433.27<br />daily_confirmed: 161665.0025","date: 18429.87<br />daily_confirmed: 153837.8896","date: 18426.48<br />daily_confirmed: 146308.0958","date: 18423.09<br />daily_confirmed: 139258.1285","date: 18419.70<br />daily_confirmed: 132870.4955","date: 18416.30<br />daily_confirmed: 127249.8553","date: 18412.91<br />daily_confirmed: 122025.1640","date: 18409.52<br />daily_confirmed: 117080.1332","date: 18406.13<br />daily_confirmed: 112366.7175","date: 18402.73<br />daily_confirmed: 107836.8713","date: 18399.34<br />daily_confirmed: 103442.5490","date: 18395.95<br />daily_confirmed:  99135.7051","date: 18392.56<br />daily_confirmed:  94868.2940","date: 18389.16<br />daily_confirmed:  90592.2701","date: 18385.77<br />daily_confirmed:  86259.5879","date: 18382.38<br />daily_confirmed:  81888.6241","date: 18378.99<br />daily_confirmed:  77605.3829","date: 18375.59<br />daily_confirmed:  73412.2061","date: 18372.20<br />daily_confirmed:  69306.0562","date: 18368.81<br />daily_confirmed:  65283.8956","date: 18365.42<br />daily_confirmed:  61342.6869","date: 18362.03<br />daily_confirmed:  57479.3923","date: 18358.63<br />daily_confirmed:  53690.9745","date: 18355.24<br />daily_confirmed:  49974.3957","date: 18351.85<br />daily_confirmed:  46326.6185","date: 18348.46<br />daily_confirmed:  42757.1146","date: 18345.06<br />daily_confirmed:  39291.3176","date: 18341.67<br />daily_confirmed:  35923.4951","date: 18338.28<br />daily_confirmed:  32646.4818","date: 18334.89<br />daily_confirmed:  29453.1122","date: 18331.49<br />daily_confirmed:  26336.2211","date: 18328.10<br />daily_confirmed:  23288.6430","date: 18324.71<br />daily_confirmed:  20303.2125","date: 18321.32<br />daily_confirmed:  17372.7644","date: 18317.92<br />daily_confirmed:  14490.1332","date: 18314.53<br />daily_confirmed:  11654.8364","date: 18311.14<br />daily_confirmed:   8881.8446","date: 18307.75<br />daily_confirmed:   6173.8826","date: 18304.35<br />daily_confirmed:   3532.8508","date: 18300.96<br />daily_confirmed:    960.6496","date: 18297.57<br />daily_confirmed:  -1540.8209","date: 18294.18<br />daily_confirmed:  -3969.6601","date: 18290.78<br />daily_confirmed:  -6323.9678","date: 18287.39<br />daily_confirmed:  -8601.8436","date: 18284.00<br />daily_confirmed: -10801.3872","date: 18284.00<br />daily_confirmed: -10801.3872"],"type":"scatter","mode":"lines","line":{"width":3.77952755905512,"color":"rgba(255,0,0,0.4)","dash":"solid"},"fill":"toself","fillcolor":"rgba(153,153,153,0.4)","hoveron":"points","hoverinfo":"x+y","showlegend":false,"xaxis":"x","yaxis":"y","frame":null}],"layout":{"margin":{"t":42.1685346616853,"r":7.30593607305936,"b":40.1826484018265,"l":54.7945205479452},"plot_bgcolor":"rgba(41,41,41,1)","paper_bgcolor":"rgba(41,41,41,1)","font":{"color":"rgba(255,255,255,1)","family":"","size":14.6118721461187},"title":{"text":"Figure: Trend of Daily Number of confirmed cases","font":{"color":"rgba(255,255,255,1)","family":"","size":15.9402241594022},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[18269.5275,18565.9225],"tickmode":"array","ticktext":["Apr","Jul","Oct"],"tickvals":[18353,18444,18536],"categoryorder":"array","categoryarray":["Apr","Jul","Oct"],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.65296803652968,"tickwidth":0.66417600664176,"showticklabels":true,"tickfont":{"color":"rgba(255,255,255,1)","family":"","size":11.689497716895},"tickangle":-0,"showline":true,"linecolor":"rgba(255,255,255,1)","linewidth":0.797011207970112,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"Date","font":{"color":"rgba(255,255,255,1)","family":"","size":14.6118721461187}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-43500.5055431713,432882.785978246],"tickmode":"array","ticktext":["0e+00","1e+05","2e+05","3e+05","4e+05"],"tickvals":[0,100000,200000,300000,400000],"categoryorder":"array","categoryarray":["0e+00","1e+05","2e+05","3e+05","4e+05"],"nticks":null,"ticks":"outside","tickcolor":"rgba(51,51,51,1)","ticklen":3.65296803652968,"tickwidth":0.66417600664176,"showticklabels":true,"tickfont":{"color":"rgba(255,255,255,1)","family":"","size":11.689497716895},"tickangle":-0,"showline":true,"linecolor":"rgba(255,255,255,1)","linewidth":0.797011207970112,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Daily number of confirmed cases","font":{"color":"rgba(255,255,255,1)","family":"","size":14.6118721461187}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":false,"legend":{"bgcolor":"rgba(255,255,255,1)","bordercolor":"transparent","borderwidth":1.88976377952756,"font":{"color":"rgba(255,255,255,1)","family":"","size":11.689497716895}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","showSendToCloud":false},"source":"A","attrs":{"5790e8c3b90":{"x":{},"y":{},"type":"bar"},"579020b73ebb":{"x":{},"y":{}},"57903115195b":{"x":{},"y":{}}},"cur_data":"5790e8c3b90","visdat":{"5790e8c3b90":["function (y) ","x"],"579020b73ebb":["function (y) ","x"],"57903115195b":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

<!--/html_preserve-->

Here is an example of how to usse the `covidtable` function:

``` r
covidtable(covid19total)
```

<!--html_preserve-->

<div id="htmlwidget-171f739df856f81a8aca" class="datatables html-widget" style="width:100%;height:auto;">

</div>

<script type="application/json" data-for="htmlwidget-171f739df856f81a8aca">{"x":{"filter":"top","filterHTML":"<tr>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"3\" data-max=\"8106384\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"0\" data-max=\"219286\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"0\" data-max=\"6597209\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"0.03208054168692\" data-max=\"472.656126231742\" data-scale=\"15\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n<\/tr>","caption":"<caption>Table 1: Summary Table of COVID-19 Cases in the World<\/caption>","data":[["Afghanistan","Angola","Albania","Andorra","United Arab Emirates","Argentina","Armenia","Antigua &amp; Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas","Bosnia &amp; Herzegovina","Belarus","Belize","Bolivia","Brazil","Barbados","Brunei","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Côte d’Ivoire","Cameroon","Congo - Kinshasa","Congo - Brazzaville","Colombia","Comoros","Cape Verde","Costa Rica","Cuba","Cyprus","Czechia","Germany","Djibouti","Dominica","Denmark","Dominican Republic","Algeria","Ecuador","Egypt","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Guatemala","Guyana","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyzstan","Cambodia","St. Kitts &amp; Nevis","South Korea","Kuwait","Laos","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Morocco","Monaco","Moldova","Madagascar","Maldives","Mexico","North Macedonia","Mali","Malta","Myanmar (Burma)","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Portugal","Paraguay","Palestinian Territories","Qatar","Romania","Russia","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","San Marino","Somalia","Serbia","South Sudan","São Tomé &amp; Príncipe","Suriname","Slovakia","Slovenia","Sweden","Eswatini","Seychelles","Syria","Chad","Togo","Thailand","Tajikistan","Timor-Leste","Trinidad &amp; Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent &amp; Grenadines","Venezuela","Vietnam","Yemen","South Africa","Zambia","Zimbabwe"],[40141,7462,16774,3377,114387,979119,63000,119,27390,63134,44317,536,213115,2496,2343,387295,29108,77571,5628,33561,87063,2775,139710,5224362,219,147,325,5242,4855,197067,74422,490003,90955,20301,21441,11000,5156,952371,502,7638,95514,6170,2581,168827,364664,5452,33,35440,120925,54203,152422,105297,452,936560,4052,88434,13293,32,876342,8881,708298,16285,47232,11478,3649,2389,5070,24932,27,101028,3710,87594,24761,8956,44816,357762,7494551,48678,526490,423524,3998,302770,402536,8195,36053,92670,109406,44196,51490,283,19,25199,115483,23,61284,1377,47845,33,217,5475,1833,7269,10471,3392,170911,260,66652,16810,11178,847108,23201,3379,4486,34875,15427,320,10707,7607,417,5852,19627,12263,1209,61307,5353,225970,16369,129304,1886,108296,323019,124107,862417,354338,581,167230,98055,54015,46746,129227,176468,1376020,4971,341854,13691,15392,57904,3,2327,31456,759,3864,35946,2817,932,5123,28268,12416,103200,5765,149,5033,1365,2049,3686,10455,29,5281,40542,345678,509,10455,301856,2501,8106384,62809,67,86289,1126,2055,702131,15789,8110],[1488,241,448,59,459,26107,1067,3,904,889,623,1,10392,41,65,5646,968,293,116,981,925,43,8463,153675,7,3,0,20,62,9782,2122,13588,4739,121,423,302,92,28803,7,85,1183,125,25,1352,9785,61,0,679,2195,1846,12375,6109,0,33775,68,1346,351,2,33325,54,43669,128,310,70,118,41,83,500,0,3515,109,2563,355,231,1109,12431,114031,1849,30123,10198,11,2190,36474,168,330,1670,1768,825,1108,0,0,444,694,0,517,82,699,0,1,13,42,113,133,43,2878,2,1569,238,36,86059,824,132,45,838,231,0,74,163,10,181,180,131,69,1123,154,6797,278,727,25,1071,6654,2557,33648,6603,7,3524,2162,1179,402,223,5812,23857,34,5165,836,317,28,0,73,917,42,99,774,55,15,109,82,184,5918,115,0,245,93,51,59,80,0,95,626,9224,21,96,5669,51,219286,522,0,731,35,596,18408,346,231],[33561,3022,10001,2057,106354,791174,47925,101,25098,48771,39903,497,21074,2330,1718,302298,16912,73841,3276,24773,79429,1648,104202,4526393,195,143,299,905,1924,166444,50600,462712,85791,19983,20117,10342,3887,847467,485,6473,58816,5753,1444,68945,291129,5373,29,29403,97575,37971,128134,98157,388,150376,3198,42099,9100,30,108014,8430,2572,7827,46578,10425,2649,1782,4954,1347,24,90001,2625,34662,19562,7213,13580,281592,6597209,23364,423921,357291,2745,265445,249127,3653,6773,84461,105001,31752,45509,280,19,23312,107108,22,27197,1268,26062,27,132,3395,961,3097,8468,1329,141381,217,47230,16215,10097,715848,17111,2570,3184,16370,10768,311,8272,7342,364,4740,12561,10419,1126,56557,4225,5184,11863,89840,1819,94229,307069,100348,774356,295312,540,90162,57919,35524,40162,126218,129556,1060279,4768,328165,6764,13756,57798,0,1753,26769,685,3089,0,1290,896,4936,7297,6148,0,5392,148,1494,1179,1517,3481,9457,28,3584,5032,302499,183,6901,129033,2052,3220573,59756,64,78847,1031,1336,630436,14927,7673],["South Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","Europe &amp; Central Asia","Middle East &amp; North Africa","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Latin America &amp; Caribbean ","East Asia &amp; Pacific","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","South Asia","Europe &amp; Central Asia","Middle East &amp; North Africa","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","East Asia &amp; Pacific","South Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","North America","Europe &amp; Central Asia","Latin America &amp; Caribbean ","East Asia &amp; Pacific","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Latin America &amp; Caribbean ","Sub-Saharan Africa ","Sub-Saharan Africa ","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Europe &amp; Central Asia","Europe &amp; Central Asia","Middle East &amp; North Africa","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Middle East &amp; North Africa","Latin America &amp; Caribbean ","Middle East &amp; North Africa","Sub-Saharan Africa ","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","East Asia &amp; Pacific","Europe &amp; Central Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Europe &amp; Central Asia","East Asia &amp; Pacific","South Asia","Europe &amp; Central Asia","Middle East &amp; North Africa","Middle East &amp; North Africa","Europe &amp; Central Asia","Middle East &amp; North Africa","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Middle East &amp; North Africa","East Asia &amp; Pacific","Europe &amp; Central Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","East Asia &amp; Pacific","Latin America &amp; Caribbean ","East Asia &amp; Pacific","Middle East &amp; North Africa","East Asia &amp; Pacific","Middle East &amp; North Africa","Sub-Saharan Africa ","Middle East &amp; North Africa","Latin America &amp; Caribbean ","Europe &amp; Central Asia","South Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","Europe &amp; Central Asia","Europe &amp; Central Asia","Middle East &amp; North Africa","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","South Asia","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Sub-Saharan Africa ","Middle East &amp; North Africa","East Asia &amp; Pacific","Europe &amp; Central Asia","East Asia &amp; Pacific","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","East Asia &amp; Pacific","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa ","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Europe &amp; Central Asia","South Asia","East Asia &amp; Pacific","Middle East &amp; North Africa","South Asia","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","East Asia &amp; Pacific","East Asia &amp; Pacific","Europe &amp; Central Asia","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Middle East &amp; North Africa","Middle East &amp; North Africa","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","Middle East &amp; North Africa","Sub-Saharan Africa ","Sub-Saharan Africa ","East Asia &amp; Pacific","East Asia &amp; Pacific","Sub-Saharan Africa ","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Sub-Saharan Africa ","Europe &amp; Central Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","Latin America &amp; Caribbean ","Europe &amp; Central Asia","Europe &amp; Central Asia","Europe &amp; Central Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","Middle East &amp; North Africa","Sub-Saharan Africa ","Sub-Saharan Africa ","East Asia &amp; Pacific","Europe &amp; Central Asia","East Asia &amp; Pacific","Latin America &amp; Caribbean ","Middle East &amp; North Africa","Europe &amp; Central Asia","Sub-Saharan Africa ","Sub-Saharan Africa ","Europe &amp; Central Asia","Latin America &amp; Caribbean ","North America","Europe &amp; Central Asia","Latin America &amp; Caribbean ","Latin America &amp; Caribbean ","East Asia &amp; Pacific","Middle East &amp; North Africa","Sub-Saharan Africa ","Sub-Saharan Africa ","Sub-Saharan Africa "],[10.5518268163976,2.3446758309703,58.7697179340836,437.764123305074,117.073497248716,217.878741161963,213.001114705834,12.2531353611071,10.798639205873,71.120337381705,44.2139020232622,0.464850857459035,185.574694652716,2.11504793049424,1.15297299228428,23.7537024867455,41.7273470235004,472.656126231742,144.499617440601,101.669191154196,91.9661184241104,71.0895010413651,121.348724496443,247.541990463689,7.6299973869872,3.39268610729658,4.25898843127696,22.7547285949498,10.2314240646044,52.4264083716249,86.7912047722917,258.548975049543,0.650740673170138,7.8941400524114,8.28593489506647,1.26741884287955,9.58273828419175,189.189816820182,5.89973274915794,138.889141443989,189.228025178893,5.44404575363108,21.5339048453372,158.230182285196,43.8652378347083,56.0006573811578,4.59558823529412,60.9086142207521,112.604034767619,12.5898153473619,87.7316480543941,10.4889950422696,1.40635948290775,198.943084065157,30.5444787010305,7.89034636634444,24.0801519623703,0.359569550302095,130.68050651502,40.8776850001772,105.978051274639,43.7723868140422,15.5277216119374,8.98737679941331,15.542832024112,12.4367361090143,37.3897665610117,23.2654449912946,2.41064971473978,60.8454841012656,47.3960289537359,89.8757936109324,60.8752304855562,7.95164589569973,45.8712732277313,13.2198152097735,54.8481676124358,98.5096664052046,63.4983955526109,107.740101236377,110.651983183556,334.430539140424,66.758438457276,27.7958768488328,35.690053569233,7.33933003139249,59.0938822821519,8.40644095891326,79.744149669346,0.171655159705413,3.59691800920054,4.8732236636578,274.496604892273,0.0320805416869204,89.3911399149877,2.7889319302123,70.5943767657816,1.80535040210077,57.076724795497,2.51112232261615,8.62479461413808,26.0832683853133,168.915430975518,17.7332680185844,46.8611763800105,66.7282619854224,250.794220580162,6.23301147485918,210.527108802474,66.4005085175857,111.358082880441,1.71889036089118,89.246458292301,6.45290572263108,247.967891316543,0.992196683148501,3.52597882713437,16.8084643776339,3.29459094532638,3.14138143590656,6.14307887031575,49.15956111973,0.518645609969493,3.05065197404232,8.17813515296459,130.370943035912,30.6082990394727,45.1974241411095,3.83567215781981,217.68101457974,14.9155461725409,292.261351216867,265.273756720646,32.7736860796095,0.66202459427065,44.0416515037289,95.4825381031854,76.6753598056734,99.7714983823895,456.299233033682,91.167100903963,95.309711714131,3.93681767964552,99.757421736936,3.19784268594681,9.44505166919443,101.522397642599,0.0447879514438889,2.97828742713467,48.7421425066161,224.158298877732,2.50211990554886,51.758285666975,2.5465297633463,43.3375492894874,88.1191388646168,51.8291559353899,59.4651394241039,100.335882143451,50.2120839974567,15.2624839948784,2.94842425089198,0.85596702451314,2.53514874233609,0.529403115079167,11.2165859995121,0.22426396951866,37.8573635475382,34.6669295773588,41.4334885759691,0.0877503555139281,2.36166611331471,68.008323954259,7.22470299566633,246.965506344585,18.703926219415,6.05846874463102,30.2600355753291,0.11672977573183,0.704686062873359,119.902961614132,8.83991572714451,5.53754922683249]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>country<\/th>\n      <th>confirmed<\/th>\n      <th>deaths<\/th>\n      <th>recovered<\/th>\n      <th>region<\/th>\n      <th>caseper10000<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":5,"fnDrawCallback":"function(settings, json) {\n$(this.api().table().header()).css({'font-size': '15px', 'background-color': '#F09366'});\n$(this.api().tables().body()).css({'font-size': '14px'});\n}","columnDefs":[{"className":"dt-right","targets":[1,2,3,5]}],"order":[],"autoWidth":false,"orderClasses":false,"orderCellsTop":true,"lengthMenu":[5,10,25,50,100]}},"evals":["options.fnDrawCallback"],"jsHooks":[]}</script>

<!--/html_preserve-->
