.class public final Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    .line 4
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmIntent:Landroid/app/PendingIntent;

    .line 12
    return-void
    .line 14
.end method
