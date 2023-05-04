import Foundation

extension Date {
    
    func dateAfter(years: Int) -> Date? {
        var dateComponent = DateComponents()
        dateComponent.year = years
        return Calendar.current.date(byAdding: dateComponent, to: Date())
    }
    
    func formattedDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let formatted = formatter.string(from: date)
        return formatted
    }
}
