.class public final Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $sleeping:Z

.field public final synthetic this$0:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RestartDozeListener;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->$sleeping:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->settings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->$sleeping:Z

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 8
    move-result v1

    .line 11
    const-string/jumbo v2, "restart_nap_after_start"

    .line 12
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 15
    return-void
    .line 18
.end method
