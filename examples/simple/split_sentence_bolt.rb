class SplitSentenceBolt < RedStorm::SimpleBolt
  output_fields :word
  on_receive(:emit => false) {|tuple| tuple.getString(0).split(' ').each {|w| emit(w)}}
end