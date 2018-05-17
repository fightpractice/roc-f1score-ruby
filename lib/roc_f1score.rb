class RocF1score
  # author vietlami

  def self.f1score(actual,predict)
    tp = 0
    fp = 0
    fn = 0
    indexes = actual.each_index.collect{|index| index}
    indexes.each do |i|
      if actual[i] == 1
        if actual[i] == predict[i]
          tp += 1
        else
          fn += 1
        end
      end
      if actual[i] == 0
        if actual[i] == predict[i]
          tp += 1
        else
          fp += 1
        end
      end
    end
    return score = 2*tp/(2*tp+fn+fp)
  end
end
