#include "greater_date.h"

unsigned int greater_date(unsigned int date1, unsigned int date2)
{
	// for date1
	// shifting to the bits containing the year/month/day and masking to extract it 
	// (this way better when debugging as the actual value is shown)
	unsigned int year1 = (date1 >> 8) & 0x0000FFFF;    							
	unsigned int month1 = date1 & 0x000000FF;
    unsigned int day1 = (date1 >> 24) & 0x000000FF;
    
    // concatenating bits in year-month-day order
	// allows direct comparison 
	unsigned int ordereddate1 = year1 * 0x0000FFFF + month1 * 0x000000FF + day1;
	
	
	// same procedure for date2
	unsigned int year2 = (date2 >> 8) & 0x0000FFFF;
	unsigned int month2 = date2 & 0x000000FF;
    unsigned int day2 = (date2 >> 24) & 0x000000FF;
    
	unsigned int ordereddate2 = year2 * 0x0000FFFF + month2 * 0x000000FF + day2;
	
	// direct date comparison
	if (ordereddate1 > ordereddate2)
	{
		return date1;
	}
	else return date2;
}
