//-------- Air Pipes



#declare YourTexture = 
    texture { BLUE_M
    }

#declare Dot =
    quadric {
       < 1.0  1.0  1.0>
       < 0.0  0.0  0.0>
       < 0.0  0.0  0.0>
        -1.0
    }

#declare Connector_1 = 
   object {
      quadric {
         < 0.0  1.0  1.0>
         < 0.0  0.0  0.0>
         < 0.0  0.0  0.0>
          -1.0
      }
      clipped_by {
         plane { < 1.0  0.0  0.0> 1.0 }
         plane { <-1.0  0.0  0.0> 0.0 }
      }
   }

#declare Connector_2 =
   quadric {
      < 1.0 -1.0  1.0>
      < 0.0  0.0  0.0>
      < 0.0  0.0  0.0>
        0.0
      rotate < 0.0  0.0  90.0>
   }

/*----------------------------------------------------------------------------*/

#declare YourThing1 =
   composite {
      object {
         sphere { < 0.000000  0.000000  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }

/*
      object {
         Connector_1
         scale     < 10.000000  3.000000  3.000000>
         texture {
            YourTexture
         }
      }
*/


      object {
         sphere { < 10.000000  0.000000  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765325  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -4.957490>
         translate < 10.000000  0.000000  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 12.754980 -0.238970  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765329  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -14.872412>
         translate < 12.754980 -0.238970  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 15.427670 -0.948740  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765321  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -24.787455>
         translate < 15.427670 -0.948740  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 17.938220 -2.108110  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.581975  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -15.450983>
         translate < 17.938220 -2.108110  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 19.463020 -2.529570  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.971167  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -2.228833>
         rotate    < 0.000000 -36.870421  0.000000>
         translate < 19.463020 -2.529570  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 21.038750 -2.606230  1.181820>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.962322  3.000000  3.000000>
         rotate    < 0.000000  0.000000  6.143039>
         rotate    < 0.000000 -37.281679  0.000000>
         translate < 21.038750 -2.606230  1.181820>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 22.591140 -2.396240  2.363640>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.953504  3.000000  3.000000>
         rotate    < 0.000000  0.000000  14.393741>
         rotate    < 0.000000 -38.650965  0.000000>
         translate < 22.591140 -2.396240  2.363640>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 24.068870 -1.910630  3.545450>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.944721  3.000000  3.000000>
         rotate    < 0.000000  0.000000  22.403970>
         rotate    < 0.000000 -41.095930  0.000000>
         translate < 24.068870 -1.910630  3.545450>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 25.423810 -1.169430  4.727270>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.935948  3.000000  3.000000>
         rotate    < 0.000000  0.000000  30.017643>
         rotate    < 0.000000 -44.831541  0.000000>
         translate < 25.423810 -1.169430  4.727270>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 26.612600 -0.200940  5.909090>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.927196  3.000000  3.000000>
         rotate    < 0.000000  0.000000  37.017673>
         rotate    < 0.000000 -50.177266  0.000000>
         translate < 26.612600 -0.200940  5.909090>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 27.598050  0.959350  7.090910>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.918476  3.000000  3.000000>
         rotate    < 0.000000  0.000000  43.094913>
         rotate    < 0.000000 -57.522848  0.000000>
         translate < 27.598050  0.959350  7.090910>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 28.350290  2.270070  8.272730>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.909776  3.000000  3.000000>
         rotate    < 0.000000  0.000000  47.824980>
         rotate    < 0.000000 -67.175753  0.000000>
         translate < 28.350290  2.270070  8.272730>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 28.847670  3.685400  9.454550>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.901093  3.000000  3.000000>
         rotate    < 0.000000  0.000000  50.707495>
         rotate    < 0.000000 -79.001429  0.000000>
         translate < 28.847670  3.685400  9.454550>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.077360  5.156700  10.636360>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.892455  3.000000  3.000000>
         rotate    < 0.000000  0.000000  51.326665>
         rotate    < 0.000000 -92.021786  0.000000>
         translate < 29.077360  5.156700  10.636360>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.035640  6.634180  11.818180>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811462  3.000000  3.000000>
         rotate    < 0.000000  0.000000  61.648954>
         rotate    < 0.000000 -91.529688  0.000000>
         translate < 29.035640  6.634180  11.818180>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  9.108420  13.152790>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811247  3.000000  3.000000>
         rotate    < 0.000000  0.000000  67.955843>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  9.108420  13.152790>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  11.714150  14.207910>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811240  3.000000  3.000000>
         rotate    < 0.000000  0.000000  74.254324>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  11.714150  14.207910>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  14.419900  14.970790>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811231  3.000000  3.000000>
         rotate    < 0.000000  0.000000  80.552421>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  14.419900  14.970790>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  17.193000  15.432240>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811245  3.000000  3.000000>
         rotate    < 0.000000  0.000000  86.850785>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  17.193000  15.432240>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  20.000000  15.586680>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662106  3.000000  3.000000>
         rotate    < 0.000000  0.000000  84.701303>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  20.000000  15.586680>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  22.650730  15.832520>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662111  3.000000  3.000000>
         rotate    < 0.000000  0.000000  74.103798>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  22.650730  15.832520>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  25.211040  16.561660>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662108  3.000000  3.000000>
         rotate    < 0.000000  0.000000  63.506176>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  25.211040  16.561660>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  27.593580  17.749230>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662108  3.000000  3.000000>
         rotate    < 0.000000  0.000000  52.908762>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  27.593580  17.749230>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  29.717080  19.354710>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662105  3.000000  3.000000>
         rotate    < 0.000000  0.000000  42.311360>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  29.717080  19.354710>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  31.509100  21.323330>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000  31.713591>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  31.509100  21.323330>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  32.908500  23.587950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000  21.116365>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  32.908500  23.587950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  33.867560  26.071300>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662107  3.000000  3.000000>
         rotate    < 0.000000  0.000000  10.518816>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  33.867560  26.071300>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  34.353550  28.688670>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662113  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -0.078773>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  34.353550  28.688670>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  34.349890  31.350780>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662102  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -10.676269>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  34.349890  31.350780>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  33.856710  33.966800>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662113  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -21.273763>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  33.856710  33.966800>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  32.890830  36.447510>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662110  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -31.871328>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  32.890830  36.447510>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  31.485200  38.708270>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662104  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -42.468734>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  31.485200  38.708270>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  29.687780  40.671960>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662106  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -53.066137>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  29.687780  40.671960>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  27.559880  42.271600>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -63.663838>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  27.559880  42.271600>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  25.174080  43.452610>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870825  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -66.173342>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  25.174080  43.452610>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  22.547930  44.612340>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870816  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -68.957846>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  22.547930  44.612340>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  19.868550  45.643120>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -71.741956>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  19.868550  45.643120>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  17.142260  46.542540>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870823  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -74.525972>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  17.142260  46.542540>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  14.375500  47.308480>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870812  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -77.310373>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  14.375500  47.308480>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  11.574810  47.939110>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870824  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -80.094696>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  11.574810  47.939110>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  8.746780  48.432950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870816  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -82.878623>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  8.746780  48.432950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  5.898110  48.788850>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -85.662982>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  5.898110  48.788850>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  3.035510  49.005950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870824  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -88.447281>
         rotate    < 0.000000 -90.000000  0.000000>
         translate < 29.000000  3.035510  49.005950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000  0.165740  49.083740>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870813  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -88.768694>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000  0.165740  49.083740>
         texture {
            YourTexture
         }
      }



//*******************************

/*

      object {
         sphere { < 29.000000 -2.704410  49.022050>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -85.984357>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -2.704410  49.022050>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -5.568180  48.821010>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870823  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -83.200338>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -5.568180  48.821010>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -8.418810  48.481110>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870819  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -80.416048>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -8.418810  48.481110>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -11.249560  48.003140>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -77.631795>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -11.249560  48.003140>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -14.053750  47.388230>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -74.847509>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -14.053750  47.388230>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -16.824760  46.637830>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -72.063396>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -16.824760  46.637830>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -19.556050  45.753720>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870828  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -69.279204>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -19.556050  45.753720>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -22.241180  44.737980>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870817  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -66.494901>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -22.241180  44.737980>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -24.873790  43.593010>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -63.710837>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -24.873790  43.593010>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -27.447680  42.321520>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -60.926534>
         rotate    < 0.000000  90.000000  0.000000>
         translate < 29.000000 -27.447680  42.321520>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 29.000000 -29.956770  40.926500>  3.000000 }
         texture {
            YourTexture
         }
      }
  
*/
//*******************************




    bounded_by {
         sphere { < 14.538680  2.198390  24.541870>  52.777596 }
      }
/*
   Fudge factor:  10.000000 percent 
   Maximum x coordinate:  32.077360
           y coordinate:  37.353550
           z coordinate:  52.083740
   Minimum x coordinate: -3.000000
           y coordinate: -32.956770
           z coordinate: -3.000000
   Center  x coordinate:  14.538680
           y coordinate:  2.198390
           z coordinate:  24.541870
*/
   }
#declare YourThing2 =
   composite {

/*
      object {
         Connector_1
         scale     < 58.424194  3.000000  3.000000>
         rotate    < 0.000000  0.000000  30.846911>
         rotate    < 0.000000  125.320904  0.000000>
         translate < 29.000000 -29.956770  40.926500>
         texture {
            YourTexture
         }
      }
      object {
         sphere { < 0.000000  0.000000  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }


      object {
         Connector_1
         scale     < 10.000000  3.000000  3.000000>
         rotate    < 0.000000 -180.000000  0.000000>
         texture {
            YourTexture
         }
      }
*/




      object {
         sphere { <-10.000000  0.000000  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765325  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -4.957490>
         rotate    < 0.000000 -180.000000  0.000000>
         translate <-10.000000  0.000000  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-12.754980 -0.238970  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765329  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -14.872412>
         rotate    < 0.000000 -180.000000  0.000000>
         translate <-12.754980 -0.238970  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-15.427670 -0.948740  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.765321  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -24.787455>
         rotate    < 0.000000 -180.000000  0.000000>
         translate <-15.427670 -0.948740  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-17.938220 -2.108110  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.581975  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -15.450983>
         rotate    < 0.000000 -180.000000  0.000000>
         translate <-17.938220 -2.108110  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-19.463020 -2.529570  0.000000>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.971167  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -2.228833>
         rotate    < 0.000000 -143.129579  0.000000>
         translate <-19.463020 -2.529570  0.000000>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-21.038750 -2.606230  1.181820>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.962322  3.000000  3.000000>
         rotate    < 0.000000  0.000000  6.143039>
         rotate    < 0.000000 -142.718321  0.000000>
         translate <-21.038750 -2.606230  1.181820>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-22.591140 -2.396240  2.363640>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.953504  3.000000  3.000000>
         rotate    < 0.000000  0.000000  14.393741>
         rotate    < 0.000000 -141.349035  0.000000>
         translate <-22.591140 -2.396240  2.363640>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-24.068870 -1.910630  3.545450>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.944721  3.000000  3.000000>
         rotate    < 0.000000  0.000000  22.403970>
         rotate    < 0.000000 -138.904070  0.000000>
         translate <-24.068870 -1.910630  3.545450>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-25.423810 -1.169430  4.727270>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.935948  3.000000  3.000000>
         rotate    < 0.000000  0.000000  30.017643>
         rotate    < 0.000000 -135.168459  0.000000>
         translate <-25.423810 -1.169430  4.727270>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-26.612600 -0.200940  5.909090>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.927196  3.000000  3.000000>
         rotate    < 0.000000  0.000000  37.017673>
         rotate    < 0.000000 -129.822734  0.000000>
         translate <-26.612600 -0.200940  5.909090>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-27.598050  0.959350  7.090910>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.918476  3.000000  3.000000>
         rotate    < 0.000000  0.000000  43.094913>
         rotate    < 0.000000 -122.477152  0.000000>
         translate <-27.598050  0.959350  7.090910>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-28.350290  2.270070  8.272730>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.909776  3.000000  3.000000>
         rotate    < 0.000000  0.000000  47.824980>
         rotate    < 0.000000 -112.824247  0.000000>
         translate <-28.350290  2.270070  8.272730>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-28.847670  3.685400  9.454550>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.901093  3.000000  3.000000>
         rotate    < 0.000000  0.000000  50.707495>
         rotate    < 0.000000 -100.998571  0.000000>
         translate <-28.847670  3.685400  9.454550>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.077360  5.156700  10.636360>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 1.892455  3.000000  3.000000>
         rotate    < 0.000000  0.000000  51.326665>
         rotate    < 0.000000 -87.978214  0.000000>
         translate <-29.077360  5.156700  10.636360>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.035640  6.634180  11.818180>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811462  3.000000  3.000000>
         rotate    < 0.000000  0.000000  61.648954>
         rotate    < 0.000000 -88.470312  0.000000>
         translate <-29.035640  6.634180  11.818180>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  9.108420  13.152790>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811247  3.000000  3.000000>
         rotate    < 0.000000  0.000000  67.955843>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  9.108420  13.152790>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  11.714150  14.207910>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811240  3.000000  3.000000>
         rotate    < 0.000000  0.000000  74.254324>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  11.714150  14.207910>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  14.419900  14.970790>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811231  3.000000  3.000000>
         rotate    < 0.000000  0.000000  80.552421>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  14.419900  14.970790>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  17.193000  15.432240>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.811245  3.000000  3.000000>
         rotate    < 0.000000  0.000000  86.850785>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  17.193000  15.432240>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  20.000000  15.586680>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662106  3.000000  3.000000>
         rotate    < 0.000000  0.000000  84.701303>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  20.000000  15.586680>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  22.650730  15.832520>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662111  3.000000  3.000000>
         rotate    < 0.000000  0.000000  74.103798>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  22.650730  15.832520>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  25.211040  16.561660>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662108  3.000000  3.000000>
         rotate    < 0.000000  0.000000  63.506176>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  25.211040  16.561660>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  27.593580  17.749230>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662108  3.000000  3.000000>
         rotate    < 0.000000  0.000000  52.908762>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  27.593580  17.749230>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  29.717080  19.354710>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662105  3.000000  3.000000>
         rotate    < 0.000000  0.000000  42.311360>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  29.717080  19.354710>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  31.509100  21.323330>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000  31.713591>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  31.509100  21.323330>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  32.908500  23.587950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000  21.116365>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  32.908500  23.587950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  33.867560  26.071300>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662107  3.000000  3.000000>
         rotate    < 0.000000  0.000000  10.518816>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  33.867560  26.071300>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  34.353550  28.688670>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662113  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -0.078773>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  34.353550  28.688670>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  34.349890  31.350780>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662102  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -10.676269>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  34.349890  31.350780>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  33.856710  33.966800>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662113  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -21.273763>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  33.856710  33.966800>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  32.890830  36.447510>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662110  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -31.871328>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  32.890830  36.447510>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  31.485200  38.708270>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662104  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -42.468734>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  31.485200  38.708270>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  29.687780  40.671960>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662106  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -53.066137>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  29.687780  40.671960>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  27.559880  42.271600>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.662109  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -63.663838>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  27.559880  42.271600>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  25.174080  43.452610>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870825  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -66.173342>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  25.174080  43.452610>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  22.547930  44.612340>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870816  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -68.957846>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  22.547930  44.612340>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  19.868550  45.643120>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -71.741956>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  19.868550  45.643120>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  17.142260  46.542540>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870823  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -74.525972>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  17.142260  46.542540>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  14.375500  47.308480>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870812  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -77.310373>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  14.375500  47.308480>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  11.574810  47.939110>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870824  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -80.094696>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  11.574810  47.939110>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  8.746780  48.432950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870816  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -82.878623>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  8.746780  48.432950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  5.898110  48.788850>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -85.662982>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  5.898110  48.788850>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  3.035510  49.005950>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870824  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -88.447281>
         rotate    < 0.000000 -90.000000  0.000000>
         translate <-29.000000  3.035510  49.005950>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000  0.165740  49.083740>  3.000000 }
         texture {
            YourTexture
         }
      }


//*******************************

/*

      object {
         Connector_1
         scale     < 2.870813  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -88.768694>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000  0.165740  49.083740>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -2.704410  49.022050>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -85.984357>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -2.704410  49.022050>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -5.568180  48.821010>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870823  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -83.200338>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -5.568180  48.821010>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -8.418810  48.481110>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870819  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -80.416048>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -8.418810  48.481110>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -11.249560  48.003140>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -77.631795>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -11.249560  48.003140>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -14.053750  47.388230>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -74.847509>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -14.053750  47.388230>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -16.824760  46.637830>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -72.063396>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -16.824760  46.637830>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -19.556050  45.753720>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870828  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -69.279204>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -19.556050  45.753720>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -22.241180  44.737980>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870817  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -66.494901>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -22.241180  44.737980>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -24.873790  43.593010>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870818  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -63.710837>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -24.873790  43.593010>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -27.447680  42.321520>  3.000000 }
         texture {
            YourTexture
         }
      }
      object {
         Connector_1
         scale     < 2.870821  3.000000  3.000000>
         rotate    < 0.000000  0.000000 -60.926534>
         rotate    < 0.000000  90.000000  0.000000>
         translate <-29.000000 -27.447680  42.321520>
         texture {
            YourTexture
         }
      }
      object {
         sphere { <-29.000000 -29.956770  40.926500>  3.000000 }
         texture {
            YourTexture
         }
      }

*/

//**************************





      bounded_by {
         sphere { <-14.538680  2.198390  24.541870>  52.777596 }
      }
/*
   Fudge factor:  10.000000 percent 
   Maximum x coordinate:  3.000000
           y coordinate:  37.353550
           z coordinate:  52.083740
   Minimum x coordinate: -32.077360
           y coordinate: -32.956770
           z coordinate: -3.000000
   Center  x coordinate: -14.538680
           y coordinate:  2.198390
           z coordinate:  24.541870
*/
   }

#declare P1 = 
   composite {
      composite { YourThing1 }
      composite { YourThing2 }
      bounded_by {
         sphere { < 0.000000  2.198390  24.541870>  60.483967 }
      }
/*
   Fudge factor:  10.000000 percent 
   Maximum x coordinate:  32.077360
           y coordinate:  37.353550
           z coordinate:  52.083740
   Minimum x coordinate: -32.077360
           y coordinate: -32.956770
           z coordinate: -3.000000
   Center  x coordinate:  0.000000
           y coordinate:  2.198390
           z coordinate:  24.541870
*/
   }
