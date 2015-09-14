#RubyMonk/Odin Project
#name of hash

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c]

  # you can do this. you are a champion.
  # unlike Artax, who gave up in a swamp.
  Hash[key_value_pairs]
end
p artax
p artax[:kick]
