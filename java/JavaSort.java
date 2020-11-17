import java.util.*;
import java.util.concurrent.*;

class Student {
    private int id;
    private String fname;
    private double cgpa;

    public Student(int id, String fname, double cgpa) {
        super();
        this.id = id;
        this.fname = fname;
        this.cgpa = cgpa;
    }

    public int getId() {
        return id;
    }

    public String getFname() {
        return fname;
    }

    public double getCgpa() {
        return cgpa;
    }
}

//Complete the code
public class JavaSort {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int testCases = Integer.parseInt(in.nextLine());

        List<Student> studentList = new ArrayList<Student>();
        while (testCases > 0) {
            int id = in.nextInt();
            String fname = in.next();
            double cgpa = in.nextDouble();

            Student st = new Student(id, fname, cgpa);
            studentList.add(st);

            testCases--;
        }
        Comparator<Student> studentComparator = (s1, s2) -> {
            double diff = s2.getCgpa() - s1.getCgpa();
            if (diff != 0) return diff > 0 ? 1 : -1;
            int diff1 = s1.getFname().compareTo(s2.getFname());
            if (diff1 != 0) return diff1;
            return s1.getId() - s2.getId();
        };
        studentList.sort(studentComparator);

        for (Student st : studentList) {
            System.out.println(st.getFname());
        }
    }
}


class BarrierDemo {
    public static void main(String[] args) {
        ExecutorService service = Executors.newFixedThreadPool(5);
        CyclicBarrier barrier = new CyclicBarrier(5);
        for (int i = 0; i < 5; i++) {
            service.execute(new Player("玩家" + i, barrier));
        }
        service.shutdown();
    }
}


class Player implements Runnable {
    private final String name;
    private final CyclicBarrier barrier;

    public Player(String name, CyclicBarrier barrier) {
        this.name = name;
        this.barrier = barrier;
    }

    public void run() {
        try {
            TimeUnit.SECONDS.sleep(1 + (new Random().nextInt(3)));
            System.out.println(name + "已准备,等待其他玩家准备...");
            barrier.await();
            TimeUnit.SECONDS.sleep(1 + (new Random().nextInt(3)));
            System.out.println(name + "已加入游戏");
        } catch (InterruptedException e) {
            System.out.println(name + "离开游戏");
        } catch (BrokenBarrierException e) {
            System.out.println(name + "离开游戏");
        }

    }
}


