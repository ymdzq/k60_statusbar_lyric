.class Lcom/android/settings/identification/OAIDSettings$3;
.super Ljava/lang/Object;
.source "OAIDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/identification/OAIDSettings;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/identification/OAIDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/identification/OAIDSettings;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/identification/OAIDSettings$3;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/android/settings/identification/OAIDSettings$3;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-static {p1}, Lcom/android/settings/identification/OAIDSettings;->access$000(Lcom/android/settings/identification/OAIDSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.miui.idprovider/oaid"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/settings/identification/OAIDSettings$3;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-static {p1}, Lcom/android/settings/identification/OAIDSettings;->-$$Nest$msetOAIDStringPrefContent(Lcom/android/settings/identification/OAIDSettings;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/identification/OAIDSettings$3;->this$0:Lcom/android/settings/identification/OAIDSettings;

    const-string/jumbo p1, "oaid_reset"

    const-string p2, "click_oaid_reset"

    invoke-static {p0, p1, p1, p2}, Lcom/android/settings/identification/OAIDSettings;->-$$Nest$mtrackEvent(Lcom/android/settings/identification/OAIDSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
