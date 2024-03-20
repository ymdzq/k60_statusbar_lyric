.class Lcom/android/settings/view/NavigationBarGuideView$3;
.super Ljava/lang/Object;
.source "NavigationBarGuideView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/view/NavigationBarGuideView;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/view/NavigationBarGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings/view/NavigationBarGuideView;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$3;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/android/settings/view/NavigationBarGuideView$3;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$fputmClickOnDialog(Lcom/android/settings/view/NavigationBarGuideView;Z)V

    .line 175
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 176
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.systemui"

    const-string v1, "com.android.systemui.fsgesture.DemoIntroduceAct"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    iget-object p2, p0, Lcom/android/settings/view/NavigationBarGuideView$3;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-static {p2}, Lcom/android/settings/view/NavigationBarGuideView;->access$000(Lcom/android/settings/view/NavigationBarGuideView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-static {}, Lcom/android/settings/view/NavigationBarGuideView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not fullscreen phone but configed fsgmode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    iget-object p0, p0, Lcom/android/settings/view/NavigationBarGuideView$3;->this$0:Lcom/android/settings/view/NavigationBarGuideView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickLearnBtnEvent(Landroid/content/Context;)V

    return-void
.end method
