import UIKit

class FactoryViewController: UIViewController {
    
    // Cоздаем пустой массив упражнений
    var exerciseArray = [Exercise]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 8. Создаем упражнение
        createExercise(exerciseName: .squatting)
        
        // 10. Запускаем упражнение
        runExercise()
        
    }
    
    // 6. Начинаем работать с фабрикой
    // 7. Создаем функцию для создания упражнения
    func createExercise(exerciseName: Exercises) {
        let newExercise = FactoryExercises.defaultFactory.createExercise(name: exerciseName)
        exerciseArray.append(newExercise)
    }
    
    // 9. Создаем функцию для запуска упражнения
    func runExercise() {
        for exercise in exerciseArray {
            exercise.start()
            exercise.stop()
        }
    }
}
