.class public final Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $animateOut:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/WorkProfileMessageController;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/screenshot/WorkProfileMessageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;->$animateOut:Lkotlin/jvm/functions/Function0;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;->this$0:Lcom/android/systemui/screenshot/WorkProfileMessageController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;->$animateOut:Lkotlin/jvm/functions/Function0;

    .line 2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;->this$0:Lcom/android/systemui/screenshot/WorkProfileMessageController;

    .line 7
    const/4 p1, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 10
    const-string v0, "com.android.systemui.screenshot"

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p0

    .line 21
    const-string/jumbo p1, "work_profile_first_run"

    .line 22
    const/4 v0, 0x1

    .line 25
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
    .line 32
.end method
