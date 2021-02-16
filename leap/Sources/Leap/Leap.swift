class Year {
  let isLeapYear: Bool 

  private static func checkLeapYear(year: Int) -> Bool {
    year.isMultiple(of: 4) &&
        ( 
            !year.isMultiple(of: 100) ||
            year.isMultiple(of: 400)
        )
  }
  init(calendarYear: Int) {    
      self.isLeapYear = 
          Year.checkLeapYear(year: calendarYear)
      
  }  


}
