.class Lcom/android/settings/datetime/MiuiZonePickerSettings$3;
.super Ljava/lang/Object;
.source "MiuiZonePickerSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/MiuiZonePickerSettings;
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

    .line 108
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$3;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

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

    .line 115
    iget-object p2, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$3;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fputmSearchText(Lcom/android/settings/datetime/MiuiZonePickerSettings;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$3;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-static {p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->-$$Nest$fgetmSearchText(Lcom/android/settings/datetime/MiuiZonePickerSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->onQueryTextSubmit(Ljava/lang/String;)V

    return-void
.end method
