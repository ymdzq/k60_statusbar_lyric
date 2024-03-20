.class Lcom/android/settings/display/ScreenColorPreference$1;
.super Ljava/lang/Object;
.source "ScreenColorPreference.java"

# interfaces
.implements Lcom/android/settings/display/ScreenColorBitMapView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenColorPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenColorPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenColorPreference;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorPreference$1;->this$0:Lcom/android/settings/display/ScreenColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjust()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorPreference$1;->this$0:Lcom/android/settings/display/ScreenColorPreference;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/ScreenColorPreference;->enablePick(IZ)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorPreference$1;->this$0:Lcom/android/settings/display/ScreenColorPreference;

    sget v0, Lcom/android/settings/R$id;->custom_color:I

    invoke-static {p0, v0}, Lcom/android/settings/display/ScreenColorPreference;->-$$Nest$fputmLastCheckId(Lcom/android/settings/display/ScreenColorPreference;I)V

    return-void
.end method
