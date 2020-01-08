class Racket < ApplicationRecord

  enum brand: { Avalox:0, Butterfly:1, Donic:2, DoubleDay:3, DHS:4, Joola:5, Mizuno:6, 
                Nittaku:7, Stiga:8, TSP:9, Tibhar:10, Victas:11, Xiom:12, Yasaka:13 }
  enum code: { I:0, J:1, K:2, L:3, M:4, N:5, O:6, P:7, Q:8, R:9, S:10, T:11, U:12, V:13 }
  enum grip: { FL:0, ST:1, AN:3 }
  enum material: { '5 ply wood':0, '7 ply wood':1, ALC:2, ZLC:3, SuperZLC:4, InnerCarbon:5 }
  enum thickness: { '5.2':0, '5.3':1}
  
  private
  def uppercase_grip
    grip.upcase
  end

end
