.class Lcom/android/settings/locale/MiuiLocaleSettings$2;
.super Ljava/lang/Object;
.source "MiuiLocaleSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/locale/MiuiLocaleSettings;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/locale/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/locale/MiuiLocaleSettings;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/locale/MiuiLocaleSettings$2;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

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

    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings$2;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-static {p2}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmSearchText(Lcom/android/settings/locale/MiuiLocaleSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/android/settings/locale/MiuiLocaleSettings$2;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-static {p2, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fputmSearchText(Lcom/android/settings/locale/MiuiLocaleSettings;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/locale/MiuiLocaleSettings$2;->this$0:Lcom/android/settings/locale/MiuiLocaleSettings;

    invoke-static {p0}, Lcom/android/settings/locale/MiuiLocaleSettings;->-$$Nest$fgetmSearchText(Lcom/android/settings/locale/MiuiLocaleSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/locale/MiuiLocaleSettings;->onQueryTextSubmit(Ljava/lang/String;)V

    return-void
.end method
