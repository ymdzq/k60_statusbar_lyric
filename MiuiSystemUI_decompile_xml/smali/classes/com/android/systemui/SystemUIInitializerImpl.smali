.class public final Lcom/android/systemui/SystemUIInitializerImpl;
.super Lcom/android/systemui/SystemUIInitializer;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
    new-instance p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
