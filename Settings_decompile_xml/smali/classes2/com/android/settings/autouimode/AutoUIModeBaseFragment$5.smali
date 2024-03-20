.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;
.super Ljava/lang/Object;
.source "AutoUIModeBaseFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$5;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mupdateSearchResult(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
