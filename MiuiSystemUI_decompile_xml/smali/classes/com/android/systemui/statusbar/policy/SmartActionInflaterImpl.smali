.class public final Lcom/android/systemui/statusbar/policy/SmartActionInflaterImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
