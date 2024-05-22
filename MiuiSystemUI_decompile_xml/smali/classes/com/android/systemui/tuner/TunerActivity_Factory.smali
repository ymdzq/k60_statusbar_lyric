.class public final Lcom/android/systemui/tuner/TunerActivity_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/settings/GlobalSettings;)Lcom/android/systemui/tuner/TunerActivity;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/tuner/TunerActivity;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/tuner/TunerActivity;-><init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/settings/GlobalSettings;)V

    .line 4
    return-object v0
    .line 7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method
