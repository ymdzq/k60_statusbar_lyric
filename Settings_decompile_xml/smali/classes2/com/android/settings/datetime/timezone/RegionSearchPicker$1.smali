.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p2}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p2, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fputmSearchText(Lcom/android/settings/datetime/timezone/RegionSearchPicker;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->onQueryTextChange(Ljava/lang/String;)Z

    .line 110
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchView(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchView(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p2}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->camera_key_action_shortcut_search:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$1;->this$0:Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    invoke-static {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)Ljava/lang/String;

    move-result-object p0

    .line 111
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
