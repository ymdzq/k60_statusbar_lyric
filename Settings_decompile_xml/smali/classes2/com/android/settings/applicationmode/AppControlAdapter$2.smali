.class Lcom/android/settings/applicationmode/AppControlAdapter$2;
.super Ljava/lang/Object;
.source "AppControlAdapter.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applicationmode/AppControlAdapter;->onBindViewHolder(Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

.field final synthetic val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$2;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    iput-object p2, p0, Lcom/android/settings/applicationmode/AppControlAdapter$2;->val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$2;->val$holder:Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, v0}, Lmiuix/animation/ITouchStyle;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
