.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 2
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 10
    return-object v6
    .line 13
.end method
