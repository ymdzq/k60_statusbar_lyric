.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 8
    return-void
    .line 11
.end method
