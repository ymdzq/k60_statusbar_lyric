.class Lcom/android/settings/KeyguardRestrictedListPreference$1;
.super Ljava/lang/Object;
.source "KeyguardRestrictedListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeyguardRestrictedListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

.field final synthetic val$mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardRestrictedListPreference;Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference$1;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    iput-object p2, p0, Lcom/android/settings/KeyguardRestrictedListPreference$1;->val$mListAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$1;->val$mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference$1;->val$mListAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
