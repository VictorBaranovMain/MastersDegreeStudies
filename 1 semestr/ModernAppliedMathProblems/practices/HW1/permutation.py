import re
import numpy as np

class PermutationalEncriptionAlgorithm():
    def __init__(self, password, order):
        if (password.strip() != '')&(not bool(re.search(r'[1234567890!@#$%^&*().,?/ ]', password))):
            self.password = password
            self.pas_len = len(self.password)
        else: raise ValueError('Invalid password')

        self.set_encription_order(order)

    def set_encription_order(self, order):
        if set(order) == set(self.password):
            self.encription_word = order
            self.reordering = [self.password.index(symbol) for symbol in order]
            self.true_order = [order.index(symbol) for symbol in self.password]
        else: raise ValueError('Invalid encripted password')
    def encript_message(self,message):

        chunks = [list(message[i*self.pas_len:i*self.pas_len + self.pas_len]) for i in range(len(message) // self.pas_len + 1)]
        if len(chunks[-1]) < self.pas_len:
            chunks[-1].extend([' ']*(self.pas_len - len(chunks[-1])))
        chunks = np.array(chunks)
        encripted_chunks = np.array([chunks[:,number] for number in self.reordering]).T
        encripted_message = "".join(list(map(lambda x: "".join(x), encripted_chunks)))
        return encripted_message
    
    def decript_message(self, message):
        chunks = [list(message[i*self.pas_len:i*self.pas_len + self.pas_len]) for i in range(len(message)//self.pas_len+1)]
        if len(chunks[-1]) < self.pas_len:
            chunks[-1].extend([' ']*(self.pas_len - len(chunks[-1])))
        chunks = np.array(chunks)
        decripted_chunks = np.array([chunks[:,number] for number in self.true_order]).T
        deencripted_message = "".join(list(map(lambda x: "".join(x), decripted_chunks)))
        return deencripted_message