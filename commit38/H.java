class H extends C {
  public H() {
    t17 = 9;
    t20 = 2;
    t36 = 4L;
    t21 = 3L;
    t35 = 6L;
  }
  public void t15() {
    System.out.println("метод t15 в классе H");
    System.out.println(++t40);
  }
  public void t26() {
    System.out.println("метод t26 в классе H");
    System.out.println(t39[1] - t39[2]);
  }
  public void t4() {
    System.out.println("метод t4 в классе H");
    System.out.println(t17 + 3);
  }
  public static void t28() {
    System.out.println("метод t28 в классе H");
    System.out.println((t34 - 4));
  }
  public static void t16() {
    System.out.println("метод t16 в классе H");
    System.out.println(--t34);
  }
  public static void t23() {
    System.out.println("метод t23 в классе H");
    System.out.println(t25);
  }
  public static void t38() {
    System.out.println("метод t38 в классе H");
    System.out.println((t25 + 3));
  }
  public void t14(C r) {
    r.t15();
  }
  public void t14(H r) {
    r.t26();
  }
}
