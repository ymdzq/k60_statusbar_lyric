.class public final synthetic Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSFooterViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFooterViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSFooterViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSFooterViewController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 17
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 24
    const-class v2, Landroid/content/ClipboardManager;

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/ClipboardManager;

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v2

    .line 36
    const v3, 0x7f130235    # @string/build_number_clip_data_label 'Build number'

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 43
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p0

    .line 54
    const p1, 0x7f130236    # @string/build_number_copy_toast 'Build number copied to clipboard.'

    .line 55
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 62
    const/4 v1, 0x1

    .line 65
    :cond_0
    return v1
    .line 66
.end method
