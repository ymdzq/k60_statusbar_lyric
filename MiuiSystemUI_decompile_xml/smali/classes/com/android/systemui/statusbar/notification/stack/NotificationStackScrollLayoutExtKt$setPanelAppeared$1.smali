.class final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$setPanelAppeared$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method
