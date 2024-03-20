.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetRename.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

.field final synthetic val$vv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iput-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->val$vv:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 109
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->val$vv:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->renameEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    sub-int/2addr p2, v1

    :goto_0
    if-lez p2, :cond_2

    .line 115
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v3, :cond_0

    .line 116
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p1, p1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v2, "FF"

    const-string v3, "01"

    const-string v4, "FF01020103"

    const-string v5, "%02x"

    const-string v6, "MiuiHeadsetRename"

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 126
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 128
    iget-object v7, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v7, v7, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothHeadset;

    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v8, v8, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v9, "+XIAOMI"

    invoke-virtual {v7, v8, v9, p2}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call sendVendorSpecificResultCode(), result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v7, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v7, v7, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v8, v8, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v7, v8}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 134
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v0, v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v1, v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x16

    invoke-interface {v0, v2, p2, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ble mma name change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 141
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->deviceName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_5
    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 149
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :cond_6
    :try_start_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 153
    iget-object p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p2, p2, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object v1, v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-interface {p2, v2, v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string/jumbo p2, "set command failed!"

    .line 156
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1$1;->this$1:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->-$$Nest$msyncAliasToCloud(Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string/jumbo p0, "syncAliasToCloud failed"

    .line 159
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string/jumbo p0, "syncAliasToCloud success"

    .line 161
    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
