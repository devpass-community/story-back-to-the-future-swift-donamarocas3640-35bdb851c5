import Foundation

extension Date {
    
    func dateAfter(years: Int) -> Date? {
        var dateComponent = DateComponents()
        dateComponent.year = years
        return Calendar.current.date(byAdding: dateComponent, to: Date())
    }
    
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let formatted = formatter.string(from: self)
        return formatted
    }
}
