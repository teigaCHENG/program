program ex413
character(len=20) str
str = 'Good Morning'
write(*,*) str
str(6:) = 'evening'
write(*,*) str
end
