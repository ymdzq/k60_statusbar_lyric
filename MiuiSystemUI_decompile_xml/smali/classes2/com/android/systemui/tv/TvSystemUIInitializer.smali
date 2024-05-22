.class public Lcom/android/systemui/tv/TvSystemUIInitializer;
.super Lcom/android/systemui/SystemUIInitializer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIInitializer;-><init>(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 2
    new-instance p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$Builder;

    .line 4
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$Builder;-><init>()V

    .line 6
    return-object p0
    .line 9
.end method
