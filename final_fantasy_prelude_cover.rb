
##| cdeg gedc
melody1 = [:c4, :d4, :e4, :g4,
           :c5, :d5, :e5, :g5,
           :c6, :d6, :e6, :g6,
           :c7,
           :g6, :e6, :d6, :c6,
           :g5, :e5, :d5, :c5,
           :g4, :e4, :d4, :c4]


##| abce ecba
melody2 = [:a3, :b3, :c4, :e4,
           :a4, :b4, :c5, :e5,
           :a5, :b5, :c6, :e6,
           :a6,
           :e6, :c6, :b5, :a5,
           :e5, :c5, :b4, :a4,
           :e4, :c4, :b3, :a3]

##| fgac cagf
melody3 = [:f3, :g3, :a3, :c4,
           :f4, :g4, :a4, :c5,
           :f5, :g5, :a5, :c6,
           
           :f6, :g6, :a6,
           :g6, :f6,
           
           :c6, :a5, :g5, :f5,
           :c5, :a4, :g4, :f4,
           :c4, :a3, :g3, :f3,]

##| Ab C Eb G
melody4 = [:ab3, :c4, :eb4, :g4,
           :ab4, :c5, :eb5, :g5,
           :ab5, :c6, :eb6, :g6,
           
           :ab6,
           :g6, :eb6, :c6, :ab5,
           :g5, :eb5, :c5, :ab4,
           :g4, :eb4, :c4, :ab3,]


define :prelude do |melody|
  melody.each do |note|
    play note, release: 1.5
    sleep 0.5
  end
end

live_loop :melodies_loop do
  with_fx :reverb do
    use_bpm 160
    2.times do
      prelude(melody1)
      sleep 0
    end
    2.times do
      prelude(melody2)
      sleep 0
    end
    2.times do
      prelude(melody3)
      sleep 0
    end
    2.times do
      prelude(melody4)
      sleep 0
    end
  end
end
