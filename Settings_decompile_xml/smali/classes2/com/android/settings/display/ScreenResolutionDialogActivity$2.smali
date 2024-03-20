.class Lcom/android/settings/display/ScreenResolutionDialogActivity$2;
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

    .line 118
    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity$2;->this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity$2;->this$0:Lcom/android/settings/display/ScreenResolutionDialogActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
