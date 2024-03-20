.class public final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mSettingsChangeCallbacks:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda1;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V

    .line 41
    invoke-static {p1, v0}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 50
    move-result p1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 58
    invoke-static {p0, v0}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method
