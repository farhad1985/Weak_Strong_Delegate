# Description:

When you have a protocol as a delegate and use it in viewcontroller you pass a reference to yourself. then this delegate have a strong refernce you make a retain cycle. this class always remains in the memory.

you should add "weak" at the first of your delegate.
I wrote a code about this problem and I'll show you how to solve this trouble. 

# How to test:
at the first please run the code and look at the log. you'll see it that the person class will be deinitialize.
then please go to the Person class and remove "weak" and run the code again. the person class will never be deinitailize and it remains in the memory.

please star this repo and share it with your friends.
