class IntegerQuiz
    def evencheck(num)
        num.even? ? 'Even': 'Odd'
    end
    
    # 최대공약수, 최소공배수 구하기
    def gl(n, m)
        # n.gcdlcm(m) # ruby스럽게 배열로 [최대공약수, 최소공배수] return
        
        a=[]
        a[0]= gcd(n,m)
        a[1]= (n*m) / a[0]
        return a
    end
    
    def gcd(n, m)
        if n < m
        m, n= n, m
        end
        
        if m== 0
            return n
        end
        
        # 나누어 떨어지면
        if n % m= 0
            return m
        else 
            # a,b에 대해서
            # a를 b로 나눈 나머지를
            # r이라 하면 (단, a > b)
            # a와 b의 최대공약수는
            # b와 r의 최대공약수와 같다
            return gcd(m, n%m) 
        end
    end
    
    require 'prime'
    def prime_num(n)
        # Prime.each(n).count
        
        primes = (2..n).to_a
        # if n = 10, primes = [2,3,4,5,6,7,8,9,10]
        (2..n).each do |i|
            # (2...i).each do
            (2..i).each do |j|
                # if (i %j == 0) 
                if (i %j == 0) && j != i
                    primes.delete(i)
                    break
                end
            end
        end
        return primes.length
    end
    
    def sum_d(n)
        (1..n).select{|divide| n % divide == 0}.sum
    end
end
