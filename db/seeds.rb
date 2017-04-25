jenny = User.create(name: "jenny")
jing = User.create(name: "jing")
kevin = User.create(name: "kevin")
ian = User.create(name: "ian")

run = Routine.create(user_id: jenny.id, habit: "run")
read = Routine.create(user_id: jing.id, habit: "read")
exercise = Routine.create(user_id: kevin.id, habit: "exercise")
cook = Routine.create(user_id: ian.id, habit: "cook")
