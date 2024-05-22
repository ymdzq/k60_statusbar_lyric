.class public final synthetic Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIApplication;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;ILjava/lang/String;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 5
    iput p2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map$Entry;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/SystemUIApplication;

    .line 2
    iget v1, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map$Entry;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/CoreStartable;

    .line 10
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Ljavax/inject/Provider;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string v4, "loading: "

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    const-string v4, "SystemUIService"

    .line 32
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    const-string v4, "Provider<"

    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ">.get()"

    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    const-wide/16 v3, 0x1000

    .line 62
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 64
    :cond_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 70
    check-cast p0, Lcom/android/systemui/CoreStartable;

    .line 71
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 73
    invoke-static {p0}, Lcom/android/systemui/SystemUIApplication;->startStartable(Lcom/android/systemui/CoreStartable;)V

    .line 76
    aput-object p0, v0, v1

    .line 79
    return-void
    .line 81
.end method
