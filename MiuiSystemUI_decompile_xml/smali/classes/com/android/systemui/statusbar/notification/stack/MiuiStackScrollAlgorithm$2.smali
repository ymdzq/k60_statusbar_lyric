.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUseControlCenterChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 6
    return-void
    .line 9
.end method
