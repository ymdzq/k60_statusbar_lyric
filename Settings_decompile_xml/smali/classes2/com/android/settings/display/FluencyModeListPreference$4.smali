.class Lcom/android/settings/display/FluencyModeListPreference$4;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$4;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    iput p2, p0, Lcom/android/settings/display/FluencyModeListPreference$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/android/settings/display/FluencyModeListPreference$4;->this$0:Lcom/android/settings/display/FluencyModeListPreference;

    iget p0, p0, Lcom/android/settings/display/FluencyModeListPreference$4;->val$pos:I

    invoke-static {p1, p0}, Lcom/android/settings/display/FluencyModeListPreference;->-$$Nest$mchangeMiuiLiteMode(Lcom/android/settings/display/FluencyModeListPreference;I)V

    return-void
.end method
