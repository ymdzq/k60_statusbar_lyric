.class Lcom/android/settings/datetime/MiuiZonePickerSettings$1;
.super Ljava/lang/Object;
.source "MiuiZonePickerSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 79
    iput-object p1, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$1;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/datetime/MiuiZonePickerSettings$1;->this$0:Lcom/android/settings/datetime/MiuiZonePickerSettings;

    invoke-virtual {p0}, Lcom/android/settings/datetime/MiuiZonePickerSettings;->finish()V

    return-void
.end method
