.class Lcom/android/settings/display/ScreenResolutionDialogActivity$1;
.super Ljava/lang/Object;
.source "ScreenResolutionDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenResolutionDialogActivity;->createResolutionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenResolutionDialogActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;

    iget-object v1, v0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 112
    invoke-static {v0}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->-$$Nest$fgetmScreenResolutionsSupported(Lcom/android/settings/display/ScreenResolutionDialogActivity;)[I

    move-result-object v1

    aget p2, v1, p2

    invoke-static {v0, p2}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->-$$Nest$mswitchResolution(Lcom/android/settings/display/ScreenResolutionDialogActivity;I)V

    .line 114
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
