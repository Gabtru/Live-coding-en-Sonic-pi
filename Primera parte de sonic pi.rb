# Configuración de tempo
use_bpm 75  # Un tempo más lento para una sensación melódica

live_loop :melodic_chords do
  use_synth :piano  # Sonido de piano para una sensación más melódica
  # Acorde de Mi menor (Em)
  play chord(:E3, :minor), release: 4
  sleep 2
  
  
  # Acorde de Re mayor (D)
  play chord(:D3, :major), release: 4
  sleep 2
  
  # Acorde de Do mayor (C)
  play chord(:C3, :major), release: 4
  sleep 2
  
  # Acorde de Sol mayor (G)
  play chord(:G3, :major), release: 4
  sleep 2
  if tick > 20  # Pausa después de 64 ciclos
    stop
  end
end

