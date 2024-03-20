.class Lcom/android/settings/datetime/MiuiZonePickerSettings$2;
.super Ljava/lang/Object;
.source "MiuiZonePickerSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/MiuiZonePickerSettings;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/MiuiZonePickerSettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$2;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$2;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-static {p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmImm(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$2;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-static {p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmSearchView(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
