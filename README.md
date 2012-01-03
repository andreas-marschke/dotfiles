= Features Of this repository =

You can find various files I collected of the years and Months and have been 
stockpiling around my Desktops/Laptops etc. .

Branches of this repository include:

* master 
  the hopefully most common denominator amongst my stuff

* kemp
  my Laptop and private machine

* duke
  my work machine

= Initializing it for a clean machine = 
Usually when I setup a new box I don't really care about the old config. I just remove it.
 for i in $(ls /path/to/dotfiles/); do if [ -x ~/.$i ]; then rm .$i; fi; ln -s /path/to/dotfiles/$i ~/.$i; done

