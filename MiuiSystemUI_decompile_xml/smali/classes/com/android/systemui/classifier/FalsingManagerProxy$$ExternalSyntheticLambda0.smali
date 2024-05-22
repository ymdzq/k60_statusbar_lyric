.class public final synthetic Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    const-string/jumbo v0, "systemui"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager()V

    .line 21
    :goto_0
    return-void
.end method
