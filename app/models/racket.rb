class Racket < ApplicationRecord

  enum code: { I:0, J:1, K:2, L:3, M:4, N:5, O:6, P:7, Q:8, R:9, S:10, T:11, U:12, V:13 }
  enum type: { FL:0, ST:1, AN:3 }
  enum material: { '5wood':0, '7wood':1, ALC:2, ZLC:3, SuperZLC:4, InnerCarbon:5 }
  enum thickness: { '5.2':0, '5.3':1}


end
