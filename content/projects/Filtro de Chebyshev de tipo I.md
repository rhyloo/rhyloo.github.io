+++
title = "Filtro de Chebyshev de tipo I."
author = ["Jorge L. Benavides M."]
draft = true
weight = 3
sidebar = false
authorbox = false
+++

Este es un proyecto

<!--more-->

<a href="https://es.mathworks.com/matlabcentral/fileexchange/92498-analog-chebyshev-filter" rel="nofollow"><img src="https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg" alt="matlab file exchange" data-canonical-src="https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg" style="max-width:100%;"></a>
<a href="https://opensource.org/licenses/BSD-3-Clause" rel="nofollow"><img src="https://img.shields.io/badge/license-BSD-blue.svg" alt="license BSD blue" data-canonical-src="https://img.shields.io/badge/license-BSD-blue.svg" style="max-width:100%;"></a>
<a href="https://github.com/rhyloo/electronic" rel="nofollow"><img alt="GitHub watchers" src="https://img.shields.io/github/watchers/rhyloo/electronic?style=social"></a>


### ¿Cómo usarlo? {#cómo-usarlo}

Dentro del código hay que introducir los parámetros básicos, no es lo más cómodo pero es funcional, lo cambiaré en las próximas versiones.

**Frecuencia de corte** - en [Hz]<br />
**El rizado** - en [dB]<br />
**Atenuación en la banda eliminada** - en [dB]<br />
**Frecuencia de atenuación** - en [Hz]<br />

Además cuenta con una opción para cambiar entre inglés y español, recomiendo la versión en inglés si se piensa exportar a LaTeX ya que falla con los acentos.

```matlab
% f_c = 1000;             % Cutoff Frecuency
% ripple_db = 2;      % Ripple Db'S
% attenuation_db = 40; % Attenuation In The Eliminated Band
% f_r = 1300;             % Frecuency Attenuation In The Eliminated Band
%%Set Lang
%Options Available = [Spanish English]
lang = "english";
```

_La topología que uso para generar las resistencias y condensadores es la de Sallen-Key, forma degenerada de una topología de filtro de fuente de voltaje controlada por voltaje (VCVS)._

Recomiendo realizar el cálculo de las resistencias y condensadores a mano.


### Screenshots {#screenshots}

Filtro pasa baja diseñado para:

-   Frecuencia de corte: 1948 Hz.
-   Rizado en la banda pasante: 1.948 dB.
-   Atenuación en la banda eliminada: 44.48 dB.
-   Frecuencia de atenuación: 2348 Hz.

<a id="figure--Filtro Chebyshev pasa baja"></a>

{{< figure src="./../images/filter_chebyshev_low_pass_1.png" alt="Filtro Chebyshev pasa baja - Output" caption="<span class=\"figure-number\">Figure 1: </span>Filtro Chebyshev pasa baja - Output" title="Filtro Chebyshev pasa baja - Output" link="./../images/filter_chebyshev_low_pass_1.png" >}}

Este mismo ejemplo está resuelto a mano en [[][diseño de un filtro de Chebyshev Pasa Baja]


### Source {#source}

<div style="display: inline">

Puedes descargar este script desde <a href="https://github.com/rhyloo/electronic" style="display: inline"><img src="./../images/github.png" alt="github.png" style="display: inline" width="9.5%" /></a> o desde

</div>

<a href="https://es.mathworks.com/matlabcentral/fileexchange/92498-analog-chebyshev-filter" rel="nofollow"><img src="https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg" alt="matlab file exchange" data-canonical-src="https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg" style="max-width:100%; display:inline"></a>


### Licencia {#licencia}

Está bajo licencia **BSD** ya que es **[simple, bien conocida, de código abierto y permisiva](https://es.mathworks.com/matlabcentral/FX_transition_faq.html)**.


### Changelog {#changelog}


#### UNRELEASED 1.1.0 {#1-1-0}

<!--list-separator-->

-  Mejoras en la interfaz para el usuario.

    Incluye la entrada de datos, resistencias y condensadores, y la salida.

<!--list-separator-->

-  Integración del filtro pasaalta, pasabanda.


#### 1.0.0 - <span class="timestamp-wrapper"><span class="timestamp">[2021-05-18 ma.]</span></span> {#1-0-0-2021-05-18-ma}

<!--list-separator-->

-  ADDED Primera versión.

<!--list-separator-->

-  ADDED **[Printout Transfer Function](https://es.mathworks.com/matlabcentral/fileexchange/74824-printout-transfer-function)** por [Bradley Sutton](/es.mathworks.com/matlabcentral/profile/authors/3239217)

    Para generar una impresión por pantalla legible y cómoda he usado dos scripts publicados en **File Exchange** de **MathWorks**. Ambos scripts son parte de un paquete llamado **[Printout Transfer Function](https://es.mathworks.com/matlabcentral/fileexchange/74824-printout-transfer-function)** publicado por [Bradley Sutton](/es.mathworks.com/matlabcentral/profile/authors/3239217).


## <span class="org-todo todo TODO">TODO</span> L {#l}
