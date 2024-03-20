.class public final Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl$onHeaderClickListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clickIntentAction:Ljava/lang/String;

    .line 10
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const/high16 p0, 0x20000000

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-interface {p1, v0, v1, v1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    .line 18
    return-void
    .line 21
.end method
