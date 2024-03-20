.class public final Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field public final smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/SmartReplyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 9
    return-void
    .line 11
.end method
