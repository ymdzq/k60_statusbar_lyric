.class Lcom/android/settings/MiuiLocalePicker$1;
.super Ljava/lang/Object;
.source "MiuiLocalePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiLocalePicker;->initSearchBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiLocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocalePicker;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

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

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p2}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p2, p1}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fputmSearchText(Lcom/android/settings/MiuiLocalePicker;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p1}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$monQueryTextChange(Lcom/android/settings/MiuiLocalePicker;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p1}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchView(Lcom/android/settings/MiuiLocalePicker;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p1}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchView(Lcom/android/settings/MiuiLocalePicker;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p2}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->camera_key_action_shortcut_search:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker$1;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p0}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmSearchText(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object p0

    .line 150
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
