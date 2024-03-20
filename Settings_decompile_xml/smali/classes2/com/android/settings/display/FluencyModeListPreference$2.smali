.class Lcom/android/settings/display/FluencyModeListPreference$2;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FluencyModeListPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FluencyModeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$2;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/settings/display/FluencyModeListPreference$2;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    invoke-static {p0}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fgetmStatus(Lcom/android/settings/display/FluencyModeListPreference;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$fputmStoredPosition(Lcom/android/settings/display/FluencyModeListPreference;I)V

    return-void
.end method
