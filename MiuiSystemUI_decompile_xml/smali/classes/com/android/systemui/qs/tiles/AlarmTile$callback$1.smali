.class public final Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/AlarmTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/AlarmTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/AlarmTile;

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
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AlarmTile$callback$1;->this$0:Lcom/android/systemui/qs/tiles/AlarmTile;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlarmTile;->lastAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 7
    return-void
    .line 10
.end method
